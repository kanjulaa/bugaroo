require 'test_helper'

class BugTest < ActiveSupport::TestCase
  
  def setup
 @bug = Bug.create(title: "a title", description: "This is the actual descrition of title", issue_type: 2, priority: 1, status: 0)
  end
 
 test "bug must be valid" do
 assert @bug.valid?
 end
 
 test "title must be present" do
 @bug.title = " "
 assert_not @bug.valid?

end

test "description must be present" do
 @bug.description = " "
 assert_not @bug.valid?
end


test "issue_type must be valid" do
 invalid_issue_types = [-10, -1, 3, 10]
 invalid_issue_types.each do |is|
 begin
 @bug.issue_type = is
 assert false, "#{is} should be invalid"
 rescue
 assert true
 end
 end
 end
 
test "priority must be valid" do
 invalid_priorities = [-10, -1, 3, 10]
 invalid_priorities.each do |is|
 begin
 @bug.priority_type = is
 assert false, "#{is} should be invalid"
 rescue
 assert true
 end
 end
 end 

test "status must be valid" do
 invalid_statuses = [-10, -1, 3, 10]
 invalid_statuses.each do |is|
 begin
 @bug.status = is
 assert false, "#{is} should be invalid"
 rescue
 assert true
 end
 end
end

 
end
