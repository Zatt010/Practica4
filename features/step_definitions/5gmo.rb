Then(/^I should see that the Product Total information is the sum beetween de Total Prices:$/) do |table|
  product_total_element = page.find('td', text: /Product Total/i, match: :first)
  total_price_elements = page.all('td', text: /\$ \d+\.\d+/)

  # Extraer los valores de texto y convertirlos a números
  product_total_value = product_total_element.text.gsub(/\D/, '').to_f
  total_prices_sum = total_price_elements.map { |elem| elem.text.gsub(/\D/, '').to_f }.sum

  # Verificar que el Product Total sea igual a la suma de los Total Prices
  expect(product_total_value).to eq(total_prices_sum)
  end
  