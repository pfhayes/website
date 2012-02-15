class CreateRedirects < ActiveRecord::Migration
  def self.up
    create_table :redirects do |t|
      t.text :code, :limit => nil
      t.text :url, :limit => nil
      t.timestamps
    end
    add_index :redirects, :code, :unique => true
    add_index :redirects, :created_at
  end

  def self.down
    remove_index :redirects, :code
    remove_index :redirects, :created_at
    drop_table :redirects
  end
end
