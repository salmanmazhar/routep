class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.string :city_id
      t.references :tip, index: true

      t.timestamps
    end
  end
end
