require 'lib/cell'
Given /^there is a White Blood Cell located at \((.*),(.*)\)$/ do |x, y|
  @white_blood_cell = Assault::WhiteBloodCell.new(x.to_i,y.to_i)
end

Given /^there is a Virus located at \((.*),(.*)\)$/ do |x, y|
  @virus = Assault::Virus.new(x.to_i,y.to_i)
end

When /^the program checks the distance between the two Cells$/ do
  @results = @white_blood_cell.distance_to(@virus)
end

Then /^the distance should be \[(.*),(.*)\]$/ do |x, y|
  @results.should == [x.to_i,y.to_i]
end
