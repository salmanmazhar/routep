class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
