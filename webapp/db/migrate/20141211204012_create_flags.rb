class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.string :body
      t.string :flaggeable_type
      t.references :tip, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
