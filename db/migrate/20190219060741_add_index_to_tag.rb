class AddIndexToTag < ActiveRecord::Migration[5.1]
  def change
    add_index :todos, :tag
  end
end
