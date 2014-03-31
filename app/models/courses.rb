class Courses < ActiveRecord::Base
	validates_presence_of :name, :course_duration, :for_search_id
	validates_uniqueness_of :name

def self.create_courses(name, course_duration, for_search_id, higher_studies_id)
	self.create(
		         name: name,
		         course_duration: course_duration,
		         for_search_id: for_search_id,
		         higher_studies_id: higher_studies_id
		        )
	
end


end
