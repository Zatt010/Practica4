Given(/^I am on the GMO homepage$/) do
  visit 'https://demo.borland.com/gmopost/'
end

When(/^I click on "Enter GMO Online"$/) do
  find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
end

Then(/^I should see the GMO Online Catalog page$/) do
  expect(page).to have_current_path('https://demo.borland.com/gmopost/online-catalog.htm')
end

Then(/^I should see "These are the items currently available through our online catalog"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(1) > td', text: 'These are the items currently available through our online catalog')
end

Then(/^I should see "3 Person Dome Tent" with price "\$ 299.99"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(2)', text: '3 Person Dome Tent')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(3)', text: '$ 299.99')
end

Then(/^I should see "External Frame Backpack" with price "\$ 179.95"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(2)', text: 'External Frame Backpack')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(3)', text: '$ 179.95')
end

Then(/^I should see "Glacier Sun Glasses" with price "\$ 67.99"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(4) > td:nth-child(2)', text: 'Glacier Sun Glasses')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(4) > td:nth-child(3)', text: '$ 67.99')
end

Then(/^I should see "Padded Socks" with price "\$ 19.99"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(5) > td:nth-child(2)', text: 'Padded Socks')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(5) > td:nth-child(3)', text: '$ 19.99')
end

Then(/^I should see "Hiking Boots" with price "\$ 109.90"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(6) > td:nth-child(2)', text: 'Hiking Boots')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(6) > td:nth-child(3)', text: '$ 109.90')
end

Then(/^I should see "Back Country Shorts" with price "\$ 24.95"$/) do
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(7) > td:nth-child(2)', text: 'Back Country Shorts')
  expect(page).to have_selector('body > form > table > tbody > tr:nth-child(2) > td > div > center > table > tbody > tr:nth-child(7) > td:nth-child(3)', text: '$ 24.95')
end
