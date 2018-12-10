require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "http://www.adonisbronze.com"

blog = driver.find_element(:link_text, "Blog")
blog.click

puts "Page title is #{driver.title}"

article = driver.find_element(:link_text, "Fantasy Con Dragon Fountain is Installed Today!")
article.click

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "fantasy con dragon fountain is installed today! | adonis bronze" }

puts "Page title is #{driver.title}"


driver.quit

