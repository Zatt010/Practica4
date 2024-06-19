Then(/^I should see the following order details in the first table:$/) do |table|
  order_details = table.hashes

  # Inicializamos la variable para almacenar los detalles del pedido
  @order_details ||= []

  order_details.each do |row|
    qty = row['Qty'].to_i
    product_description = row['Product Description']
    unit_price = row['Unit Price'].to_f
    total_price = row['Total Price'].to_f

    # Encuentra la tabla de detalles del pedido
    order_details_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')

    # Busca la fila específica por la descripción del producto
    order_row = order_details_table.find("tr", text: /#{Regexp.escape(product_description)}/)

    # Verifica los detalles del pedido en la fila encontrada
    expect(order_row).to have_content(qty)
    expect(order_row).to have_content(unit_price)
    expect(order_row).to have_content(total_price)

    # Calculamos el total_price esperado para verificar más adelante
    calculated_total_price = (qty * unit_price).round(2)

    # Agregamos los detalles del producto actual a @order_details
    @order_details << { quantity: qty, product_description: product_description, unit_price: unit_price, total_price: calculated_total_price }
  end
end

Then(/^I should see the following totals right down:$/) do |table|
  expected_totals = table.rows_hash

  # Verificar que @order_details esté inicializado y no esté vacío
  if @order_details.nil? || @order_details.empty?
    raise "No order details found. Please ensure @order_details is populated."
  end

  # Calcular los totales esperados en base a @order_details
  product_total = @order_details.sum { |item| item[:total_price] }
  sales_tax = (product_total * 0.05).round(2)
  grand_total = (product_total + sales_tax + 5).round(2) 

  # Debugging para verificar los cálculos
  puts "Product Total calculated: #{product_total}"
  puts "Sales Tax calculated: #{sales_tax}"
  puts "Grand Total calculated: #{grand_total}"

  # Encontrar los elementos de totales en la página y verificar
  info_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')

  table.rows.each do |row|
    info_label = row[0]
    info_value = row[1]

    # Buscar la fila que contiene la etiqueta (info_label)
    info_row = info_table.find('tr', text: /\b#{info_label}\b/i)

    expect(info_row).to have_content(info_label)

    # Determinamos el selector CSS correcto para el valor de información
    info_value_element = nil
    case info_label
    when 'Product Total'
      info_value_element = info_row.find('td:nth-child(3)')
      calculated_value = product_total
    when 'Sales Tax'
      info_value_element = info_row.find('td:nth-child(2)')
      calculated_value = sales_tax
    when 'Grand Total'
      info_value_element = info_row.find('td:nth-child(2) > strong')
      calculated_value = grand_total
    else
      raise "Unexpected label '#{info_label}' in totals table."
    end

    # Verificación del valor presente en la columna adecuada de la fila correcta
    expect(info_value_element.text.gsub(/[^\d\.]/, '').to_f).to eq(calculated_value)
    expect(info_value_element).to have_content(info_value)
  end
end
