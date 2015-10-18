
Given(/^a new athlete has joined the team$/) do
end

Given(/^his Rocket ID is "([^"]*)"$/) do |arg1|
  @athlete = {:athleteNum => 10}
end

Given(/^his first name is "([^"]*)"$/) do |arg1|
    @athlete = {:firstName => "Bradley"}
end

Given(/^his last name is "([^"]*)"$/) do |arg1|
   @athlete = {:lastName => "Watson"}
end

Given(/^his Birth Year is "([^"]*)"$/) do |arg1|
   @athlete = {:birthYear => 1965}
end

When (/^I press "Create Athlete"$/) do 
end

Then(/^I should see the new athlete$/) do
end