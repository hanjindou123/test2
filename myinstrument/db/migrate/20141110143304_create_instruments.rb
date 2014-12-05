class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :instrument_sn
      t.string :instrument_name
      t.string :instrument_class
      t.string :instrument_address
      t.text :instrument_brief
      t.text :instrument_detail
      t.string :instrument_state
      t.decimal :instrument_cost_per_hour
      t.string :instrument_assistant
      t.string :instrument_assessor
      t.string :instrument_administrator

      t.timestamps
    end
  end
end
