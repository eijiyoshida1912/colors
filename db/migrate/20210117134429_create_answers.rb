class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      1.upto(103) do |i|
        t.string :"q#{i}", null: false
      end
      t.string :name, null: false
      t.integer :sex, null: false, default: 1
      t.integer :age, null: false
      t.string :job, null: false

      t.timestamps
    end
  end
end
