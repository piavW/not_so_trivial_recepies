Given("I visit the home page") do
  visit root_path
end

When("I click {string}") do |element|
  click_on element
end

When("I fill in {string} field with {string}") do |field, content|
  fill_in field, with: content
end