class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :date_initiation
      t.date :date_end
      t.references :project
      t.references :user
      t.references :status

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :user_id
    add_index :tasks, :status_id
  end
end
