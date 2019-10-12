
Then("I submit the Stripe form") do
  click_on "Submit Payment"
end

Then("I fill in Stipe field {string} with {string}") do |input_field, value|
  case input_field
  when "CC Number"
    frame_name = '#card-number div iframe'
    field_name = 'cardnumber'
    when "Expiry date"
  frame_name = '#card-expiry div iframe'
  field_name = 'exp-date'
    when "CVC"
  frame_name = '#card-cvc div iframe'
  field_name = 'cvc'
  end
  stripe_frame= find(frame_name)
  within_frame stripe_frame do
    page.driver.browser.find_element(name: field_name).send_keys(value)
  end
end