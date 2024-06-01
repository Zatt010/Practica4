Given(/^2I am on the GMO homepage$/) do
  visit 'https://demo.borland.com/gmopost/'
end

When(/^2I click on "Enter GMO Online"$/) do
  find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
end

When(/^2I add 1 "([^"]*)" to the order$/) do |item_name|
  # Encuentra el nombre del producto
  product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"

  # Encuentra todos los nombres de productos
  product_names = all(product_name_css).map(&:text)

  # Encuentra el índice del producto actual
  index = product_names.index(item_name)

  # Calcula el selector específico del producto actual
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
  table.rows.each do |row|
    qty, description, status, unit_price, total_price = row
    expect(page).to have_content(qty) unless qty.nil? || qty.empty?
    expect(page).to have_content(description)
    expect(page).to have_content(status) unless status.nil? || status.empty?
    expect(page).to have_content(unit_price) unless unit_price.nil? || unit_price.empty?
    expect(page).to have_content(total_price)
  end
end
