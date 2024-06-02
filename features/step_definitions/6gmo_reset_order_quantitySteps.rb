
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
  