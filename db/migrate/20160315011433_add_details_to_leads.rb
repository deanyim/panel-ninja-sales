class AddDetailsToLeads < ActiveRecord::Migration
  def change
    add_reference :leads, :introduced_by, references: :leads, index: true
    add_foreign_key :leads, :leads, column: :introduced_by_id

    add_column :leads, :lead_quality, :integer
    add_column :leads, :lead_warmth, :integer
    add_column :leads, :pipeline_step, :string
    add_column :leads, :is_closed, :boolean
  end
end
