Given(/^4I am on the GMO homepage$/) do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When(/^4I click on "Enter GMO Online"$/) do
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
  
  Then(/^I should see the Place Order page$/) do
    expect(page).to have_content('Place Order')
  end

  Then(/^I should see the following order details:$/) do |table|
    order_details_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')
  
    table.hashes.each_with_index do |row, index|
      qty = row['Qty']
      product_description = row['Product Description']
      delivery_status = row['Delivery Status']
      unit_price = row['Unit Price']
      total_price = row['Total Price']
  
      row_index = index + 2 # Comenzamos desde la fila 2, ya que la primera fila es la cabecera
      order_row = order_details_table.find("tr:nth-child(#{row_index})")
  
      expect(order_row.find('td:nth-child(1)').text).to eq(qty)
      expect(order_row.find('td:nth-child(2)').text).to eq(product_description)
      expect(order_row.find('td:nth-child(3)').text).to eq(delivery_status)
      expect(order_row.find('td:nth-child(4)').text).to eq(unit_price)
      expect(order_row.find('td:nth-child(5)').text).to eq(total_price)
    end
  end
  
  Then(/^I should see the following information:$/) do |table|
    info_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')

    table.rows.each do |row|
      info_label = row[0]
      info_value = row[1]

    # Buscamos la fila que contiene exactamente la etiqueta de información
    info_row = info_table.find('tr', text: /\b#{info_label}\b/i)

    # Verificamos que el texto de la etiqueta esté presente en la primera columna de la fila
    expect(info_row).to have_content(info_label)

    # Determinamos el selector CSS correcto para el valor de información
    info_value_element = nil
    if info_label == 'Product Total'
      info_value_element = info_row.find('td:nth-child(3)')
    else
      info_value_element = info_row.find('td:nth-child(2)')
    end

    # Verificamos que el valor esté presente en la columna adecuada de la fila
    expect(info_value_element).to have_content(info_value)
  end
end
