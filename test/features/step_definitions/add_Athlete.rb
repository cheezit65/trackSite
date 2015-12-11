  require 'capybara/cucumber'
  Capybara.default_driver = :selenium
  
  
  Given(/^a new athlete has joined the team$/) do
    visit 'localhost:3000/athletes/new'
  end
  
  Given(/^his Rocket ID is "([^"]*)"$/) do |arg1|
  fill_in 'athlete_athleteNum', :with => '68'
  end
  
  Given(/^his first name is "([^"]*)"$/) do |arg1|
  fill_in 'athlete_firstName', :with => 'Bradley'
  end
  
  Given(/^his last name is "([^"]*)"$/) do |arg1|
  fill_in 'athlete_lastName', :with => 'Watson'
  end
  
  Given(/^his Birth Year is "([^"]*)"$/) do |arg1|
  fill_in 'athlete_birthYear', :with => '1965'
  end
  
  When(/^I initiate "Create Athlete"$/) do 
    click_button('Create Athlete')
  end
  
  When(/^I wait (\d+) seconds$/) do |seconds|
   #save_and_open_screenshot
    sleep seconds.to_i
  end
  
  Then(/^I expect to see the new athlete in the page that opens$/) do
  #  page.assert_selector('h2', :text => 'Athlete Added to Roster', :visible => true)
    save_and_open_screenshot
     page.should have_content('Bradley')
  end


#
#
#
# Code below is for Watir
#
#require 'capybara/cucumber'
#require 'watir-webdriver'
#browser = Watir::Browser.new :firefox # should open a new Firefox window
#browser.goto 'localhost:3000/athletes' 


#Given(/^a new athlete has joined the team$/) do
#  browser.goto 'localhost:3000/athletes/new'
#end

#Given(/^his Rocket ID is "([^"]*)"$/) do |arg1|
#  browser.text_field(:id => 'athlete_athleteNum').set '67'
#end

#Given(/^his first name is "([^"]*)"$/) do |arg1|
#  browser.text_field(:id => 'athlete_firstName').set "Bradley"
#end
#
#Given(/^his last name is "([^"]*)"$/) do |arg1|
#  browser.text_field(:id => 'athlete_lastName').set "Watson"
#end

#Given(/^his Birth Year is "([^"]*)"$/) do |arg1|
#  browser.text_field(:id => 'athlete_birthYear').set "1965"
#end

#When(/^I initiate "Create Athlete"$/) do 
#  browser.input(:name => 'commit').click
#end

#Then(/^I should see the new athlete in the page that opens$/) do
#   puts browser.text.include? 'Bradley'
#end



