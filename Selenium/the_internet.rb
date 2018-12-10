require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://the-internet.herokuapp.com"

puts "successfully navigated"

dropdown_link = driver.find_element(:link_text, "Dropdown")
dropdown_link.click

puts "dropdown page found"

dropdown = driver.find_element(:id, "dropdown")
dropdown.click
sleep 5
# option_1 = driver.find_element(:text, "Option 1")
# option_1.click


driver.quit