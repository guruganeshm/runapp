class AddDesignationTypeIdToDesignation < ActiveRecord::Migration
  def change
    add_column :designations, :designation_type_id, :integer
  end
end
