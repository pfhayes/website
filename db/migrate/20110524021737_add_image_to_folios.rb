class AddImageToFolios < ActiveRecord::Migration
  def self.up
    add_column :folios, :image, :text
  end

  def self.down
    remove_column :folios, :image
  end
end
