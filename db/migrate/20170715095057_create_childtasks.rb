class CreateChildtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :childtasks do |t|
      t.string :name
      t.date :due_date
      t.boolean :status
      t.references :parenttask, foreign_key: true

      t.timestamps
    end
  end
end
