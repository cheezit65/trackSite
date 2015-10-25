require 'capybara/cucumber'
require 'watir-webdriver'
browser = Watir::Browser.new :firefox # should open a new Firefox window
browser.goto 'localhost:3000/athletes/new' # or type the local path to your downloaded copy


Given(/^a new athlete has joined the team$/) do
#  browser.goto 'localhost:3000/athletes/new'
end

Given(/^his Rocket ID is "([^"]*)"$/) do |arg1|
  browser.text_field(:id => 'athlete_athleteNum').set '67'
end

Given(/^his first name is "([^"]*)"$/) do |arg1|
  browser.text_field(:id => 'athlete_firstName').set "Bradley"
end

Given(/^his last name is "([^"]*)"$/) do |arg1|
  browser.text_field(:id => 'athlete_lastName').set "Watson"
end

Given(/^his Birth Year is "([^"]*)"$/) do |arg1|
  browser.text_field(:id => 'athlete_birthYear').set "1965"
end

When(/^I initiate "Create Athlete"$/) do 
  browser.input(:name => 'commit').click
end

Then(/^I should see the new athlete in the page that opens$/) do
puts browser.text.include? 'Bradley'
end
