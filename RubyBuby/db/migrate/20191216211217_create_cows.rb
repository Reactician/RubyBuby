class CreateCows < ActiveRecord::Migration[6.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.text :description
      t.decimal :weight
      t.integer :age, :limit => 1

      t.timestamps
    end
  end
end
