class CreateFeedStudents < ActiveRecord::Migration
  def change
    create_table :feed_students do |t|
      t.integer :feed_id
      t.integer :student_id

      t.timestamps
    end
  end
end
