class AddFeatureRequestsToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :feature_requests, :text
  end
end
