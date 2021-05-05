class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :notes
      t.boolean :completed
      t.integer :todo_list_id

      t.timestamps
    end
  end
end
