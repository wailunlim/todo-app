class UpdateTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :todos, :completed, :completed?
    change_column_null :todos, :completed?, false
  end
end
