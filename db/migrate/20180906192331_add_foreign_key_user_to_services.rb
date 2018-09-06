class AddForeignKeyUserToServices < ActiveRecord::Migration[5.2]
  def change
  add_column :services, :user_id, :integer, index: { unique: true }, foreign_key: true 
  end
end
