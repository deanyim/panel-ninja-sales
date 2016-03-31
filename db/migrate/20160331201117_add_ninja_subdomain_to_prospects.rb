class AddNinjaSubdomainToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :ninja_subdomain, :string
  end
end
