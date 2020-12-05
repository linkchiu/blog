class Rename < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name,:userName
  end
end
