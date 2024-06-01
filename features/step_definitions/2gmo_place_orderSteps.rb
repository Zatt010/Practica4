Given(/^2I am on the GMO homepage$/) do
  visit 'https://demo.borland.com/gmopost/'
end

When(/^2I click on "Enter GMO Online"$/) do
  find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
end

When(/^2I add 1 "([^"]*)" to the order$/) do |item_name|
  product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"

  product_names = all(product_name_css).map(&:text)

  index = product_names.index(item_name)

  # Select específico del producto actual
  specific_unit_price_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(3)"
  specific_quantity_input_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(4) > h1 > input[type=text]"

  # Establece la cantidad del producto en el campo de entrada correcto
  find(specific_unit_price_input_css).sibling('td:nth-child(4)').find('h1 > input[type=text]').set('1')
end

Then(/^2I press "Place An Order"$/) do
  click_button 'Place An Order'
end

Then(/^2I should see the Place Order page$/) do
  expect(page).to have_content('Place Order')
end

Then(/^2I should see the following order details:$/) do |table|
  order_details = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(2)')

  table.rows.each do |row|
    qty = row[0]
    product_description = row[1]
    delivery_status = row[2]
    unit_price = row[3]
    total_price = row[4]

    expect(order_details.find('td:nth-child(1)').text).to eq(qty)
    expect(order_details.find('td:nth-child(2)').text).to eq(product_description)
    expect(order_details.find('td:nth-child(3)').text).to eq(delivery_status)
    expect(order_details.find('td:nth-child(4)').text).to eq(unit_price)
    expect(order_details.find('td:nth-child(5)').text).to eq(total_price)
  end
end

Then(/^2I should see the following information:$/) do |table|
  additional_info = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3)')

  table.rows.each do |row|
    info_label = row[0]
    info_value = row[1]

    expect(additional_info).to have_content(info_label)
    expect(additional_info.find('td:nth-child(3)').text).to eq(info_value)
  end
end


