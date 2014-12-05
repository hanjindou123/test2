class CreateAvailables < ActiveRecord::Migration
  def change
    create_table :availables do |t|
      t.integer :instrument_id
      t.string :available_datetime
      t.boolean :available_slot0
      t.boolean :available_slot1
      t.boolean :available_slot2
      t.boolean :available_slot3
      t.boolean :available_slot4
      t.boolean :available_slot5
      t.boolean :available_slot6
      t.boolean :available_slot7
      t.boolean :available_slot8
      t.boolean :available_slot9
      t.boolean :available_slot10
      t.boolean :available_slot11

      t.timestamps
    end
  end
end
