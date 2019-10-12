
Then("I fill in the Stripe field {string} with {string}") do |input_field, value|
  stripe_frame = find("iframe[name='__privateStripeFrame4']")
  case input_field
  when "CC Number"
    field = 'cardnumber'
  end
    within_frame(stripe_frame) do
      find(field).send_keys(value)
    end
end

Then("I submit the Stripe form") do
  click_on submit
end