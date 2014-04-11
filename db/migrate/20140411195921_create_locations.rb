class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :languages
      t.text :emails, array: true

      t.timestamps
    end
  end
end
