class CreateStudentSchools < ActiveRecord::Migration
  def change
    create_table :student_schools do |t|
      t.boolean :status, :default => false
      t.integer :student_id
      t.integer :school_id

      t.timestamps
    end
  end
end
