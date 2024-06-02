
Then(/^I should see the following order details for the only item:$/) do |table|
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

Then(/^I should see the Product Total information bellow:$/) do |table|
  additional_info = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3)')

  table.rows.each do |row|
    info_label = row[0]
    info_value = row[1]

    expect(additional_info).to have_content(info_label)
    expect(additional_info.find('td:nth-child(3)').text).to eq(info_value)
  end
end


