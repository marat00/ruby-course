class Student < ActiveRecord::Base
  attr_accessible :course, :name

  # Write code allows a student to have many urls
  # validate that :name is in the list of allowed students
  # validate that :course is correct 

end
