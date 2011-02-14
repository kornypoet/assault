require 'lib/cell'
require 'lib/battlefield'

Transform /^(-?\d+)$/ do |number|
  number.to_i
end

Given /^there is a White Blood Cell located at \((.*),(.*)\)$/ do |x, y|
  @white_blood_cell = Assault::WhiteBloodCell.new(x,y)
  @battlefield.state << @white_blood_cell
end

Given /^there is a Virus located at \((.*),(.*)\)$/ do |x, y|
  @virus = Assault::Virus.new(x,y)
  @battlefield.state << @virus
end

When /^the program checks the distance between the two Cells$/ do
  @results = @white_blood_cell.distance_to(@virus)
end

Then /^the distance should be \[(.*),(.*)\]$/ do |x, y|
  @results.should == [x,y]
end

Given /^the White Blood Cell is alive$/ do
  @white_blood_cell.life = true
end

Given /^the Virus is dead$/ do
  @virus.life = false
end

When /^the program describes the White Blood Cell$/ do
  @results = @white_blood_cell.describe
end

Given /^there is a Battlefield$/ do
  @battlefield = Assault::Battlefield.new()
end

Given /^the Battlefield is empty$/ do
  @battlefield.state.empty? == true
end

When /^the program describes the Battlefield$/ do
  @results = @battlefield.describe
end

Then /^the Battlefield should have the following attributes$/ do |table|
  table.rows_hash.inject({}) do |result, (key, value)|
    result[key] = value.to_i
    result
  end.should == @results
  @battlefield.draw
end

Then /^the user should see "([^"]*)"$/ do |str|
  @results.should == str
end


