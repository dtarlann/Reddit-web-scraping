import csv
import json
from selenium import webdriver
import chromedriver_autoinstaller
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from concurrent.futures import ThreadPoolExecutor
from time import sleep

# DriverManager class to manage the Chrome WebDriver
# Automatically installs the ChromeDriver if not already installed
class DriverManager: # <-- Line 143, 242, 266
    def __init__(self):
        self.driver = None

    def start_driver(self):
        if not self.driver:
            options = webdriver.ChromeOptions()
            options.add_argument("--start-maximized")
            self.driver = webdriver.Chrome(options=options)
        return self.driver

    def close_driver(self):
        if self.driver:
            self.driver.quit()
            self.driver = None

# Scroller class to handle scrolling on the Reddit page
# It scrolls down the page until a minimum number of posts are loaded or a maximum number of attempts is reached
class Scroller: # <-- Line 150
    @staticmethod
    def scroll_until_posts_loaded(driver, min_posts=100, max_attempts=20): # This method scrolls the page until a minimum number of posts are loaded
        previous_post_count = 0
        attempts = 0
        while attempts < max_attempts:
            posts = driver.find_elements(By.CSS_SELECTOR, 'a[class="absolute inset-0"]')
            post_count = len(posts)

            if post_count >= min_posts:
                break

            if post_count == previous_post_count:
                attempts += 1
            else:
                attempts = 0

            previous_post_count = post_count
            driver.execute_script("window.scrollBy(0, 3000);")
            sleep(0.5)

        driver.execute_script("window.scrollTo(0, 0);")

# CommentsExtractor class to handle the extraction of comments from Reddit posts
# It includes methods to scroll through the comments and extract the author and content of each comment
class CommentsExtractor: # <-- Line 185
    @staticmethod
    def scroll_loop(driver): # <-- This method scrolls the page to load more comments. Line 109
        while True:
            try:
                driver.execute_script("window.scrollTo(0, document.documentElement.scrollHeight);")
                more_buttons = driver.find_elements(By.CSS_SELECTOR, "#comment-tree > faceplate-partial > div:nth-child(2) > faceplate-tracker > button")
                if not more_buttons:
                    break
                for button in more_buttons:
                    try:
                        button.click()
                        WebDriverWait(driver, 10).until_not(EC.staleness_of(button))
                    except:
                        continue
            except:
                break

    @staticmethod
    def more_replies(driver): # <-- This method handles the "More Replies" button to load more comments. Line 110
        driver.execute_script("window.scrollTo(0, 0);")

        while True:
            try:
                last_height = driver.execute_script("return document.body.scrollHeight")
                driver.execute_script("window.scrollBy(0, 1000);")
                sleep(0.5)

                more_replies1 = driver.find_elements(By.XPATH, '//*[@id="comment-tree"]/shreddit-comment/faceplate-partial/div[1]/button')
                if not more_replies1:
                    break

                for button in more_replies1:
                    try:
                        button.click()
                        WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, "//shreddit-comment")))
                    except Exception:
                        continue

                new_height = driver.execute_script("return document.body.scrollHeight")
                if new_height == last_height:
                    break
            except Exception as e:
                print(f"Error: {e}")
                break

    @staticmethod
    def comments(driver): # <-- This method extracts comments from the Reddit post. Line
        WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.CSS_SELECTOR, "shreddit-comment")))

        driver.execute_script("window.scrollTo(0, document.documentElement.scrollHeight);")
        sleep(2)

        CommentsExtractor.scroll_loop(driver) # <-- This method scrolls the page to load more comments. Line 58
        # CommentsExtractor.more_replies(driver) # <-- This method handles the "More Replies" button to load more comments (Optional). Line 75

        comment_blocks = driver.find_elements(By.CSS_SELECTOR, "shreddit-comment")

        combined_data = []
        for block in comment_blocks:
            try:
                author = block.get_attribute('author')
                if not author:
                    author = "Unknown"
            except Exception:
                author = "Unknown"

            try:
                comment_elem = block.find_element(By.XPATH, ".//div[contains(@id, 'post-rtjson-content')]")
                comment = comment_elem.text.strip()
                if not comment:
                    comment = ""
            except Exception:
                comment = ""

            combined_data.append({
                "author": author,
                "comment": comment
            })

        return combined_data

# PostExtractor class to handle the extraction of posts from Reddit communities
# It includes methods to scroll through the posts and extract the author, title, content, and comments of each post
class PostExtractor: # <-- Line 226
    @staticmethod
    def post(url):
        driver_manager = DriverManager()
        driver = driver_manager.start_driver()
        driver.get(url)

        WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, 'h1.flex')))
        heading = driver.find_element(By.CSS_SELECTOR, 'h1.flex').text.strip()

        Scroller.scroll_until_posts_loaded(driver) # <-- This method scrolls the page until a minimum number of posts are loaded. Line 33
        all_posts = []

        posts = driver.find_elements(By.CSS_SELECTOR, 'a[class="absolute inset-0"]')

        for i in range(min(5, len(posts))):
            try:
                posts = driver.find_elements(By.CSS_SELECTOR, 'a[class="absolute inset-0"]')
                post_link = posts[i]
                driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", post_link)
                post_link.click()
            except:
                continue

            WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, "h1[id^='post-title']")))

            try:
                name_element = driver.find_element(By.CSS_SELECTOR, ".author-name")
                name = name_element.text
            except:
                name = "Unknown"

            try:
                title_element = driver.find_element(By.CSS_SELECTOR, "h1[id^='post-title']")
                title = title_element.text
            except:
                title = "No Title"

            try:
                text_element = driver.find_elements(By.XPATH, "//div[contains(@class, 'md')]/p")
                post_content = "\n".join([p.text for p in text_element])
            except:
                post_content = "No Text"

            try:
                all_comments = CommentsExtractor.comments(driver)
            except:
                continue

            all_posts.append({
                "Author": name,
                "Title": title,
                "Content": post_content,
                "Comments": all_comments
            })

            driver.back()
            WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, 'a[class="absolute inset-0"]')))

        driver.quit()
        return heading, all_posts

# CommunityExtractor class to handle the extraction of communities from Reddit
# It includes methods to click on the "See More" button and extract the URLs of popular communities
class CommunityExtractor: # <-- Line 246
    @staticmethod
    def community():
        driver_manager = DriverManager()
        driver = driver_manager.start_driver()

        reddit = "https://www.reddit.com/"

        driver.get(reddit)
        WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, "popular-communities-list-see-more")))

        driver.find_element(By.ID, "popular-communities-list-see-more").click()

        communities_url = []
        for i in range(1, 4):
            try:
                communities = driver.find_element(By.CSS_SELECTOR, f"#popular-communities-list > ul:nth-child(1) > li:nth-child({i}) > a:nth-child(1)")
                communities_url.append(communities.get_attribute("href"))
            except:
                continue

        with ThreadPoolExecutor(max_workers=5) as executor: # <-- This method uses ThreadPoolExecutor to handle multiple threads for scraping posts from communities.
            futures = [executor.submit(PostExtractor.post, url) for url in communities_url] # <-- This Line submits the PostExtractor.post method to the executor for each community URL.
            # Wait for all futures to complete and collect the results

            all_community_posts = {}
            for future in futures:
                community_name, posts = future.result() # <-- This Line retrieves the community name and posts from the future object.
                all_community_posts[community_name] = posts

        driver.quit()

        return all_community_posts

# This is the main class that orchestrates the scraping process
# It initializes the DriverManager, scrapes the Reddit communities, and saves the results to CSV and JSON files
class RedditScraper: 
    def __init__(self):
        self.driver_manager = DriverManager()
        self.driver_manager.start_driver()

    def scrape(self):
        all_community_posts = CommunityExtractor.community() # <-- This Line calls the CommunityExtractor.community method to scrape the Reddit communities.

        csv_file = "reddit_communities_posts.csv"
        with open(csv_file, mode="w", encoding="utf-8", newline="") as file: # <-- This Line opens a CSV file for writing.
            writer = csv.writer(file)

            writer.writerow(["Community", "Author", "Title", "Content", "Comments"])

            for community, posts in all_community_posts.items():
                for post in posts:
                    comments_text = "\n".join([f"{c['author']}: {c['comment']}" for c in post["Comments"]])

                    writer.writerow([community, post["Author"], post["Title"], post["Content"], comments_text])
        print(f"✅ CSV file created: {csv_file}")

        json_file = "reddit_communities_posts.json"
        with open(json_file, mode="w", encoding="utf-8") as file: # <-- This Line opens a JSON file for writing.
            json.dump(all_community_posts, file, indent=4, ensure_ascii=False)
        print(f"✅ JSON file created: {json_file}")

        self.driver_manager.close_driver()

    def run(self):
        self.scrape()