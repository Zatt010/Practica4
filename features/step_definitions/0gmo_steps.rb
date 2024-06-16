Then(/^I should see the GMO Online Catalog page$/) do
  expect(page).to have_current_path('https://demo.borland.com/gmopost/online-catalog.htm')
end

# Paso específico para verificar el mensaje "These are the items currently available through our online catalog"
Then(/^I should see the catalog availability message$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(1) > td', text: 'These are the items currently available through our online catalog')
end

# Paso general para verificar cualquier texto en la página
Then(/^I should see the text "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should see "([^"]*)" with price "\$ ([\d\.]+)"$/) do |item_name, price|
  product_name_css = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr > td:nth-child(2) > a > strong"
  product_names = all(product_name_css).map(&:text)
  
  # Encuentra el índice del producto
  index = product_names.index(item_name)
  raise "Item not found: #{item_name}" if index.nil?

  product_name_selector = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(2)"
  expect(page).to have_selector(product_name_selector, text: item_name)

  price_selector = "body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(#{index + 2}) > td:nth-child(3)"
  expect(page).to have_selector(price_selector, text: "$ #{price}")
end

When(/^I click on "About the GMO Site"$/) do
  find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(2) > input[type=button]').click
end

Then(/^I should see the About the GMO Site page$/) do
  expect(page).to have_content('This is a sample online commerce application. It is not real.')
end

# Paso para verificar cualquier texto en la página
Then(/^I should see "([^"]+)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should see the privacy and security warning$/) do
  # Verifica la primera parte del texto
  expect(page).to have_selector('font', text: 'For your privacy and security,')
  # Verifica la segunda parte del texto
  expect(page).to have_selector('font', text: 'DO NOT ENTER REAL BILLING OR SHIPPING INFORMATION')
end
When(/^I press "Browser Test Page"$/) do
  find('input[name="bBrowserTest"]').click
end

Then(/^I should see the browser test page title$/) do
  expect(page).to have_content('All Browsers Are Not Created Equal')
end

Then(/^I should see the following browser table contents:$/) do |table|
  table.raw.flatten.each do |text|
    expect(page).to have_selector('strong', text: text)
  end
end

Then(/^I should see the following elements:$/) do |table|
  table.raw.flatten.each do |text|
    expect(page).to have_content(text)
  end
end

Then(/^I should see the following elements in the side table:$/) do |table|
  table.raw.flatten.each do |text|
    expect(page).to have_content(text)
  end
end
