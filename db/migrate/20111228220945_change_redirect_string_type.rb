class ChangeRedirectStringType < ActiveRecord::Migration
  def self.up
    change_column :redirects, :url, :text
  end

  def self.down
    change_column :redirects, :url, :string
  end
end
