Given("I visit the home page") do
  visit root_path
end

Given("I fill in the field with {string}") do |string|
  pending
end

Then("I click {string}") do |element|
  click_on element
end

When("I fill in {string} field with {string}") do |field, content|
  fill_in field, with: content
end