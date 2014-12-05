class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :subscribe_instrument_sn
      t.string :subscribe_user_name
      t.string :subscribe_submit_datetime
      t.boolean :subscribe_use_slot0
      t.boolean :subscribe_use_slot1
      t.boolean :subscribe_use_slot2
      t.boolean :subscribe_use_slot3
      t.boolean :subscribe_use_slot4
      t.boolean :subscribe_use_slot5
      t.boolean :subscribe_use_slot6
      t.boolean :subscribe_use_slot7
      t.boolean :subscribe_use_slot8
      t.boolean :subscribe_use_slot9
      t.boolean :subscribe_use_slot10
      t.boolean :subscribe_use_slot11
      t.decimal :subscribe_cost
      t.string :subscribe_state

      t.timestamps
    end
  end
end
