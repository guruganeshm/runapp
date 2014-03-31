class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_duration
      t.string :for_search_id
      t.string :higher_studies_id

      t.timestamps
    end
  end
end
