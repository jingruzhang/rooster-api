class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :position
      t.integer :calls
      t.boolean :doubling, :default => false
      t.boolean :principle, :default => false
      t.boolean :concertmaster_principle_doubling, :default => false
      t.integer :fee
      t.timestamps
    end
  end
end
