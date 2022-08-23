class CreateCalculations < ActiveRecord::Migration
  def change
    create_table :calculations do |t|
      t.string :inputs
      t.integer :output

      t.timestamps null: false
    end
  end
end
