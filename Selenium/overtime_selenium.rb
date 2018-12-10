require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://streadbeck-overtime.herokuapp.com/"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "overtime" }

puts "Page title is #{driver.title}"

header = driver.find_element(:css, "h1")

if header.text == "Time Tracker"
  puts "found!"
  else
    puts "fail"
  end

user_email = driver.find_element(:id, "user_email")
user_email.send_keys "estreadbeck@gmail.com"

user_password = driver.find_element(:id, "user_password")
user_password.send_keys "alloran0987"
user_password.submit

wait.until { driver.title.downcase.start_with? "overtime"}

puts "Page title is #{driver.title}"



new_post = driver.find_element(:link_text, "Request Overtime")
new_post.click

puts "creating request"

sleep 1

request_time = driver.find_element(:id, "post_overtime_request")
driver.execute_script("arguments[0].setAttribute('value', 41.0)", request_time)


request_date = driver.find_element(:id, "post_date")
request_date.send_keys "#{Time.now.strftime("%m/%d/%Y")}"

request_rationale = driver.find_element(:id, "post_rationale")
request_rationale.send_keys "This is daves's selenium post"
bob = "This is bob's selenium post"
request_rationale.submit

puts "Created request"

puts "navigating to entries..."
entries = driver.find_element(:link_text, "Time Entries")
entries.click
puts "navigated"
puts "Page title is #{driver.title}"

puts "searching for created rationale"
sleep 2
posted_rationale = driver.find_element(:partial_link_text, "This is daves's selenium post")

posted_rationale.click
puts "Found rationale"
sleep 3

 driver.quit