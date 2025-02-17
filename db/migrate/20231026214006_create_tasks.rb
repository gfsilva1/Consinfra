class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.references :projects, null: false, foreign_key: true
      t.references :suppliers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
