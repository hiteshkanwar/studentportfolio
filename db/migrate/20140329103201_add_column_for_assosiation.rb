class AddColumnForAssosiation < ActiveRecord::Migration
  def up
    add_column :students, :user_id, :integer
    add_column :schools, :user_id, :integer
  end

  def down
  end
end
