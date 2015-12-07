#Step Definiton for 1c
Given /the following emails exist/ do |task_table|
  task_table.hashes.each do |email|
        Project.create!(task)
  end
end

#Step Definiton 1d
Then /^(?:|I )should be on (.+)$/ do |page_name|
  visit path_to(page_name)
end


Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
	field_labeled(field).value.should =~ /#{value}/ 
end

#Step Definition 1e
And /^type "([^\"]*)" in "([^\"]*)"/ do |value, field|
	field_labeled(field).value.should =~ /#{value}/ 
end

#Step Definition 2h
Then /^The user data should be in the database$/ do

end

#Step Definition 2i
And /the following users exist/ do |user_table|
	User.delete_all
	user_table.hashes.each do |userentry|
		User.create({:fname => userentry["fname"], :lname => userentry["lname"], :email => userentry["email"]})
	end
end

And /the following queue items exist/ do |guest_table|
	User.delete_all
	guest_table.hashes.each do |guestentry|
		User.create({:email => guestentry["email"]})
	end
end

Then /the queue should include the following item: "(.*)"/ do |item|
	expect(User.find_by_email( item )).not_to eq(nil)
end

#Step Definition 4a
Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
	field_labeled(field).value.should =~ /#{value}/
end

#Step Definition 4b
Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
	field_labeled(field).value.should =~ /#{value}/
end

#Step Definition 4c
Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value| 
	field_labeled(field).value.should =~ /#{value}/
end

#Step Definition for Home_Page
Then /^I should print out the raw HTML$/ do
  puts page.body
end

#Step Definition New_User_Entry

Then /^I should see "([^"]*)" in the "(.*?)" field/ do |arg1,arg2|
 field = find_field(arg2)
 field_value = (field.tag_name == 'textarea') ? field.text : field.value
 field_value.should =~ /#{arg1}/
end
