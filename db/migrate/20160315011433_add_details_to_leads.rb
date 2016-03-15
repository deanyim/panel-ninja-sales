class AddDetailsToLeads < ActiveRecord::Migration
  def change
    add_reference :leads, :lead, index: true, foreign_key: true
    add_column :leads, :lead_quality, :integer
    add_column :leads, :lead_warmth, :integer
    add_column :leads, :pipeline_step, :string
    add_column :leads, :is_closed, :boolean
  end
end
