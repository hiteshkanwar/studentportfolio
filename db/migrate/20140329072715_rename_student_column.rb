class RenameStudentColumn < ActiveRecord::Migration
  def up
	rename_column :students, :name, :description
  end

  def down
  end
end
