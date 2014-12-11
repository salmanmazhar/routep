class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote
      t.references :user, index: true
      t.references :tip, index: true

      t.timestamps
    end
  end
end
