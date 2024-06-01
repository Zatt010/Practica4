Given(/^6I am on the GMO homepage$/) do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When(/^6I click on "Enter GMO Online"$/) do
    find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
  end

  When(/^2I add 1 "([^"]*)" to the order$/) do |item_name|
    product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"
  
    product_names = all(product_name_css).map(&:text)
  
    index = product_names.index(item_name)
    specific_unit_price_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(3)"
    specific_quantity_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(4) > h1 > input[type=text]"
  
    find(specific_unit_price_input_css).sibling('td:nth-child(4)').find('h1 > input[type=text]').set('1')
  end

  When(/^I press "Reset Form"$/) do
    find('input[type=reset][name=bReset]').click
  end
  
  Then(/^the Order Quantity for "([^"]*)" should be 0$/) do |item_name|
    product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"
    product_names = all(product_name_css).map(&:text)
    index = product_names.index(item_name)
    
    specific_quantity_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(4) > h1 > input[type=text]"
    expect(find(specific_quantity_input_css).value).to eq('0')
  end
  