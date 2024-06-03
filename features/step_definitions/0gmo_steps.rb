
Then(/^I should see the GMO Online Catalog page$/) do
  expect(page).to have_current_path('https://demo.borland.com/gmopost/online-catalog.htm')
end

Then(/^I should see "These are the items currently available through our online catalog"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(1) > td', text: 'These are the items currently available through our online catalog')
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
