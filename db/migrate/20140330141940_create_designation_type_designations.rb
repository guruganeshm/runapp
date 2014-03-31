class CreateDesignationTypeDesignations < ActiveRecord::Migration
  def change
    create_table :designation_type_designations do |t|
      t.integer :designation_type_id
      t.integer :designation_id

      t.timestamps
    end
  end
end
