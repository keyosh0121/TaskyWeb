class CreateYoyakus < ActiveRecord::Migration[5.1]
  def change
    create_table :yoyakus do |t|
      t.string :name
      t.string :email
      t.string :alignment
      t.integer :amount

      t.timestamps
    end
  end
end
