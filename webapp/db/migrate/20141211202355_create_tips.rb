class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :body
      t.string :duration
      t.integer :price

      t.timestamps
    end
  end
end
