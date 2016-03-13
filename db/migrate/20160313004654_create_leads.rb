class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :role
      t.string :company
      t.string :company_type
      t.datetime :ping_at
      t.text :notes
      t.date :first_contact

      t.timestamps null: false
    end
  end
end
