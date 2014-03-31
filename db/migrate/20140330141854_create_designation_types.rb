class CreateDesignationTypes < ActiveRecord::Migration
  def change
    create_table :designation_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
