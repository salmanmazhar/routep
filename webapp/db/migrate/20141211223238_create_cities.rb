class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :lang
      t.string :long
      t.string :place_id

      t.timestamps
    end
  end
end
