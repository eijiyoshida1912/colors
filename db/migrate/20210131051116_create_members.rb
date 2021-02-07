class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :administrator, null: false, default: false

      t.timestamps
    end
  end
end
