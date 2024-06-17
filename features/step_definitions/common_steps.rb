Given(/^I am on the GMO homepage$/) do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When(/^I click on "Enter GMO Online"$/) do
    find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
  end
  
  When(/^I add (\d+) "([^"]*)" to the order$/) do |quantity, item_name|
    
    product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"
    product_names = all(product_name_css).map(&:text)
    index = product_names.index(item_name)
  
    specific_quantity_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(4) > h1 > input[type=text]"
    find(specific_quantity_input_css).set(quantity)
  end

  Then(/^I press "Place An Order"$/) do
    click_button 'Place An Order'
  end

  Then(/^I press "Place The Order"$/) do
    click_button 'Place The Order'
  end

  Then(/^I should see the Place Order page$/) do
    expect(page).to have_content('Place Order')
  end

  Then(/^I press "Proceed with order"$/) do
    click_button 'Proceed With Order'
  end

  Then(/^I press "Same As Bill" checkbox$/) do
    find('input[type=checkbox][name="shipSameAsBill"]').set(true)
  end
  
  Then(/^I should see the following order details:$/) do |table|
    order_details_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')
  
    table.hashes.each_with_index do |row, index|
      qty = row['Qty']
      product_description = row['Product Description']
      delivery_status = row['Delivery Status']
      unit_price = row['Unit Price']
  
      row_index = index + 2 # Comenzamos desde la fila 2, ya que la primera fila es la cabecera
      order_row = order_details_table.find("tr:nth-child(#{row_index})")
  
      expect(order_row.find('td:nth-child(1)').text).to eq(qty)
      expect(order_row.find('td:nth-child(2)').text).to eq(product_description)
      expect(order_row.find('td:nth-child(3)').text).to eq(delivery_status)
      expect(order_row.find('td:nth-child(4)').text).to eq(unit_price)
    end
  end
  
