class ChangeStatusToChildtask < ActiveRecord::Migration[5.1]
  def change
    change_column :childtasks, :status, :boolean, null: false, default: false
  end
end
