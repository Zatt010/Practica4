Given(/^I am on the GMO Catalog Homepage$/) do
  visit 'https://demo.borland.com/gmopost/online-catalog.htm'
end

When(/^I click on the item "([^"]*)"$/) do |item_name|
  click_on item_name
end

Then(/^I should see the description "([^"]*)"$/) do |description|
  expect(page).to have_css('em', text: description)
end

