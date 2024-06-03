  When(/^I add the following items to the order:$/) do |table|
    table.hashes.each do |row|
      step %{I add #{row['Quantity']} "#{row['Item']}" to the order}
    end
  end
  
  Then(/^I should see the information bellow totally completed:$/) do |table|
    info_table = page.find('body > form > table > tbody > tr:nth-child(1) > td > div > center > table > tbody')

    table.rows.each do |row|
      info_label = row[0]
      info_value = row[1]
    info_row = info_table.find('tr', text: /\b#{info_label}\b/i)

    expect(info_row).to have_content(info_label)

    # Determinamos el selector CSS correcto para el valor de información
    info_value_element = nil
    if info_label == 'Product Total'
      info_value_element = info_row.find('td:nth-child(3)')
    else
      info_value_element = info_row.find('td:nth-child(2)')
    end

    # Verificacion valor presente en la columna adecuada de la fila correcta
    expect(info_value_element).to have_content(info_value)
  end
end
