Given(/^I am on the GMO Catalog Homepage$/) do
  visit 'https://demo.borland.com/gmopost/online-catalog.htm'
end

When(/^I click on the item "([^"]*)"$/) do |item_name|
  click_on item_name
end

Then(/^I should see the description "([^"]*)"$/) do |description|
  expect(page).to have_css('em', text: description)
end

Then(/^I should see the price "([^"]*)"$/) do |price|
  div_index = find_div_index_by_price(price)
  price_css = "body > div:nth-child(#{div_index}) > table > tbody > tr:nth-child(1) > td:nth-child(3)"
  expect(page).to have_selector(price_css, text: price)
end

Then(/^I should see the item number "([^"]*)"$/) do |item_number|
  div_index = find_div_index_by_item_number(item_number)
  item_number_css = "body > div:nth-child(#{div_index}) > table > tbody > tr:nth-child(3) > td:nth-child(2)"
  expect(page).to have_selector(item_number_css, text: item_number)
end

# Métodos auxiliares 
def find_div_index_by_price(price)
  all('div').each_with_index do |div, index|
    return index * 10 + 5 if div.has_selector?('td', text: price)
  end
end

def find_div_index_by_item_number(item_number)
  all('div').each_with_index do |div, index|
    return index * 10 + 5 if div.has_selector?('td', text: item_number)
  end
end
