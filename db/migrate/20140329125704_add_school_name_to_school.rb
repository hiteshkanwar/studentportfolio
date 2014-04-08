class AddSchoolNameToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :school_name, :string
  end
end
