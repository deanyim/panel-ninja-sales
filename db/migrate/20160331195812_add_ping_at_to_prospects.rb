class AddPingAtToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :ping_at, :datetime
  end
end
