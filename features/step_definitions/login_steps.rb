When /^I perform HTTP authentication as "([^\"]*)" with "([^\"]*)"$/ do |name, password|
  page.driver.browser.basic_authorize(name, password)
  visit "/"
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.has_content?(arg1)
end
