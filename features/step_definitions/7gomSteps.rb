Given(/^7I am on the GMO homepage$/) do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When(/^7I click on "Enter GMO Online"$/) do
    find('body > form > div:nth-child(1) > center > table > tbody > tr > td:nth-child(1) > input[type=button]').click
  end
