Given("I visit the landing page") do
  visit root_path
end

Given("I go to popup") do
  
  # binding.pry
  
  popup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(popup)
end

# page.driver.browser.switch_to.alert.accept
# page.driver.browser.switch_to.alert.accept
# # or
# page.driver.browser.switch_to.alert.dismiss
# # or
# page.driver.browser.switch_to.alert.text

# Facebook call to start login and then the callback
# FB.getLoginStatus(function(response) {
#   statusChangeCallback(response);
# });

Given("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end