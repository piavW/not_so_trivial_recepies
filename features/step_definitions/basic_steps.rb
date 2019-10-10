Given("the following membership exist") do |table|
  table.hashes.each do |membership_hash| 
    FactoryBot.create(:membership, membership_hash)
  end
end

Given("I visit the home page") do
  visit root_path
end

Given("I click {string}") do |element|
  click_on element
end

Given("I click on {string} for {string}") do |button_text, membership_title|
  membership = Membership.find_by_title membership_title
  within("#membership_#{membership.id}") do
  click_on button_text
  end
end

Then("I should be on purchase page") do
  visit current_path
end

Then("I fill in the Stripe field {string} with {string}") do |field, value|
  fill_in "Field",	with: "value" 
end

Then("I submit the Stripe form") do
  click_on submit
end

Given("the following user exist") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end