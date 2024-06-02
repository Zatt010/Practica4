    
  Then(/^I should see the Billing Information page$/) do
    expect(page).to have_content('Billing Information')
  end
  
  When(/^I fill in the following billing details:$/) do |table|
    billing_details = table.rows_hash
    billing_details.each do |field, value|
      fill_in "bill#{field.gsub(' ', '')}", with: value
    end
  end
  
  Then(/^I press "Same As Bill" checkbox$/) do
    find('input[type=checkbox][name="shipSameAsBill"]').set(true)
  end
  
  
  Then(/^I should see the following shipping details filled:$/) do |table|
    shipping_details = table.rows_hash
    shipping_details.each do |field, value|
      expect(page).to have_field("ship#{field.gsub(' ', '')}", with: value)
    end
  end
  