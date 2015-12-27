class CreateTransacts < ActiveRecord::Migration
  def change
    create_table :transacts do |t|
      t.integer :card_id
      t.integer :vendor_id
      t.integer :time
      t.integer :amount

      t.timestamps
    end
  end
end
