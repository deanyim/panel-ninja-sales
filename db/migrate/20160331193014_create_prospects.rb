class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :email
      t.string :company
      t.integer :their_interest
      t.integer :our_interest
      t.text :notes
      t.boolean :is_closed

      t.timestamps null: false
    end
  end
end
