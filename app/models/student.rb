class Student < ActiveRecord::Base
  attr_accessible :course, :name

  # students are allowed to have many urls
  has_many :urls

  # validate that :name is in the list of allowed students
  VALID_STUDENTS = %w{dputnam adesilv1 ryaryy rgorreap ubenesch zng1 jswanner
    npachec2 avalenc7 bmckeand mpernabe dott bernst tcoffey1 gpaz ywun mweaver3
  	jsteele pkassian psakhark jsotobus, bkrantzi crosales jmencha1 asushon kchan131
  	mhankins jmonto10 jreed13 ikim5 jpayne ktieu kposey1 dlouie11 zbazarra tho36
  	tparas amanayan jgarc166}
  validates :name, :inclusion => { :in => VALID_STUDENTS }

  # validate that :course is correct
  validates_format_of :course, :with => /cs132a/, :on => :create
end
