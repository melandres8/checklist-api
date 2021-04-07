class CreateChecklists < ActiveRecord::Migration[6.1]
  def change
    create_table :checklists do |t|
      t.string :name
      t.string :created_by

      t.timestamps
    end
  end
end
