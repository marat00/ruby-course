class Url < ActiveRecord::Base
  require 'uri'
  attr_accessible :comment, :name, :student_id, :url

  # shows a url belonging to a student
  belongs_to :students
  
  # Write code the validates urls have a domain name of herokuapp.com.
  validates_format_of :url, with: /^(http:\/\/)+([a-zA-Z0-9]|[-])+(\.herokuapp.com)+$/i,
                            :on => :create
  validates_uniqueness_of :url
end
