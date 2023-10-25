class CreateWorkProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :work_progresses do |t|
      t.integer :total
      t.references :project, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
