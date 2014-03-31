class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :name
      t.integer :for_search_id
      t.float :course_duration

      t.timestamps
    end
  end
end
