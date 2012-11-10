class DropFolios < ActiveRecord::Migration
  def self.down
    create_table :folios do |t|
      t.string :name
      t.text :url, :limit => nil
      t.text :description, :limit => nil

      t.timestamps
    end
  end

  def self.up
    drop_table :folios
  end
end
