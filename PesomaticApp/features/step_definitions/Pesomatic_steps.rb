Given(/^I am in the Pesomatic weight calculator page$/) do
  visit '/calcular_peso/index'
end

When(/^I fill in "(.*?)" with my height which is (\d+) inches$/) do |height_element, inches|
  fill_in height_element, with: inches
end

When(/^I press "(.*?)" button$/) do |button|
  click_on button
end

Then(/^I should see my ideal weight \(BMI\) in pounds or kilograms$/) do
  pending # express the regexp above with the code you wish you had
end

