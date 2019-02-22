class AddDefaultForTitle < ActiveRecord::Migration[5.1]
  def change
    change_column_null :todos, :title, false
  end
end
