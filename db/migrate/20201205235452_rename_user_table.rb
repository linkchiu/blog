class RenameUserTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :userName,:name
  end
end
