Given(/^3I am on the GMO homepage$/) do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When(/^3I click on "Enter GMO Online"$/) do
    find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
  end
  
  When(/^3I add 5 "([^"]*)" to the order$/) do |item_name|
    product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"
    product_names = all(product_name_css).map(&:text)
    index = product_names.index(item_name)
  
    specific_quantity_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(4) > h1 > input[type=text]"
    find(specific_quantity_input_css).set('5')
  end
  
  Then(/^3I press "Place An Order"$/) do
    click_button 'Place An Order'
  end
  
  Then(/^3I should see the Place Order page$/) do
    expect(page).to have_content('Place Order')
  end
  
  Then(/^3I should see the following order details:$/) do |table|
    table.rows.each do |row|
      qty, description, status, unit_price, total_price = row
      expect(page).to have_content(qty) unless qty.nil? || qty.empty?
      expect(page).to have_content(description)
      expect(page).to have_content(status) unless status.nil? || status.empty?
      expect(page).to have_content(unit_price) unless unit_price.nil? || unit_price.empty?
      expect(page).to have_content(total_price)
    end
  end
  
  Then(/^3I press "Proceed with order"$/) do
    click_button 'Proceed With Order'
  end
  
  Then(/^3I should see the Billing Information page$/) do
    expect(page).to have_content('Billing Information')
  end
  
  When(/^3I fill in the following billing details:$/) do |table|
    billing_details = table.rows_hash
    billing_details.each do |field, value|
      fill_in "bill#{field.gsub(' ', '')}", with: value
    end
  end
  
  Then(/^3I press "Same As Bill" checkbox$/) do
    find('input[type=checkbox][name="shipSameAsBill"]').set(true)
  end
  
  
  Then(/^3I should see the following shipping details filled:$/) do |table|
    shipping_details = table.rows_hash
    shipping_details.each do |field, value|
      expect(page).to have_field("ship#{field.gsub(' ', '')}", with: value)
    end
  end
  