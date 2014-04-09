class AddContentToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :content, :string
  end
end
