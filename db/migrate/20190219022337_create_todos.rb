class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :task
      t.string :tag
      t.boolean :completed

      t.timestamps
    end
  end
end
