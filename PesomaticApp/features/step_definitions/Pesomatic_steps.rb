Given(/^I am in the Pesomatic weight calculator page$/) do
  visit '/calcular_peso/index'
end

When(/^I fill in "(.*?)" with my height which is (\d+) inches$/) do |height_element, inches|
  page.select('Pulgadas', :from => 'system')
  fill_in height_element, with: inches
end

When(/^I press "(.*?)" button$/) do |button|
  click_on button
end

Then(/^I should see my ideal weight \(BMI\) in pounds or kilograms$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" men, "(.*?)" women$/) do |ideal_weight1, ideal_weight2|
   
  #expect(page).to have_content ideal_weight1
  #page.should(have_content ideal_weight1)
  #page.should(have_content ideal_weight2)
 find("label", :text => ideal_weight1)
 find("label", :text => ideal_weight2)
end