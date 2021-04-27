class RenameUnameToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :clubs, :uname, :name
  end
end
