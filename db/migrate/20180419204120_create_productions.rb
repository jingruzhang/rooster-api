class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.string :name
      t.boolean :has_orchestra
      t.boolean :has_vocals
      t.integer :pay_per_call
      t.integer :pay_per_hour
      t.timestamps
    end
  end
end
