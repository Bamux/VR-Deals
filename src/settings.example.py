"""Please fill out the settings.example.py and rename it to settings.py"""

# Database Connection
host = "localhost"
user = "root"
passwd = ""  # enter your password to your mysql database here
database = "vr_schnaeppchen"

# Chromedriver for Selenium
'''
Selenium is needed to read the data from the Oculus Store because the information on the website
is protected against access via web scraping.

ChromeDriver is a separate executable that Selenium WebDriver uses.
It is maintained by the Chromium team with help from WebDriver contributors.
If you are unfamiliar with Selenium WebDriver, you should check out the Selenium site.

Download the ChromeDriver binary for your platform under the downloads section of this site:
https://chromedriver.chromium.org/downloads
'''
#  enter the path where the chromedriver.exe is located as an example "C:/path/to/chromedriver.exe"
chromedriver_executable_path = ""
