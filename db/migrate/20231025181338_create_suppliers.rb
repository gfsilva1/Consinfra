class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :category
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
