class RenameColumn < ActiveRecord::Migration
  def change

    rename_column :users, :genre, :gender
  end
end
