class CreateForSearches < ActiveRecord::Migration
  def change
    create_table :for_searches do |t|
      t.string :name

      t.timestamps
    end
  end
end
