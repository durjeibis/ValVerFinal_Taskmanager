class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :date_initiation
      t.date :date_end
      t.references :status

      t.timestamps
    end
    add_index :projects, :status_id
  end
end
