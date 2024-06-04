When(/^I input (.*) in the "name field"$/) do |name|
  fill_in 'billName', with: name
end

When(/^I input (.*) in the "address field"$/) do |address|
  fill_in 'billAddress', with: address
end

When(/^I input (.*) in the "city field"$/) do |city|
  fill_in 'billCity', with: city
end

When(/^I input (.*) in the "state field"$/) do |state|
  fill_in 'billState', with: state
end

When(/^I input (.*) in the "zip field"$/) do |zip|
  fill_in 'billZipCode', with: zip
end

When(/^I input (.*) in the "phone field"$/) do |phone|
  fill_in 'billPhone', with: phone
end

When(/^I input (.*) in the "email field"$/) do |email|
  fill_in 'billEmail', with: email
end

When(/^I select (.*) from the "credit card type dropdown"$/) do |credit_card|
  select credit_card, from: 'CardType'
end

When(/^I input (.*) in the "card number field"$/) do |card_number|
  fill_in 'CardNumber', with: card_number
end

When(/^I input (.*) in the "expiration date field"$/) do |expiration|
  fill_in 'CardDate', with: expiration
end

Then(/^I should see the OnLine Store Receipt page$/) do
  expect(page).to have_content('OnLine Store Receipt')
end

Then(/^I should get an "(.*)" alert$/) do |alert|
  alert_text = page.driver.browser.switch_to.alert.text
  expect(alert_text).to eq(alert)
end

