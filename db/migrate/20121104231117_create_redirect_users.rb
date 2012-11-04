class CreateRedirectUsers < ActiveRecord::Migration
  def change
    create_table :redirect_users do |t|
      t.string :username
      t.string :hashed_pw

      t.timestamps
    end
  end
end
