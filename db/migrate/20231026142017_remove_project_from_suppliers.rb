class RemoveProjectFromSuppliers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :suppliers, :project, null: false, foreign_key: true
  end
end
