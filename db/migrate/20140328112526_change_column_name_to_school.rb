class ChangeColumnNameToSchool < ActiveRecord::Migration
  def up
     rename_column :schools, :name, :description
  end

  def down
  	rename_column :users, :description, :name
  end
end
