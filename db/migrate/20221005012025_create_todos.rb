class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :status
      t.boolean :is_completed

      t.timestamps
    end
  end
end
