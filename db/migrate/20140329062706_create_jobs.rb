class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :eligiblity_id
      t.string :course_come_id

      t.timestamps
    end
  end
end
