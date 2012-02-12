class AddUpdatedIndexToFolios < ActiveRecord::Migration
  def self.up
    add_index :folios, :updated_at
  end

  def self.down
    remove_index :folios, :updated_at
  end
end
