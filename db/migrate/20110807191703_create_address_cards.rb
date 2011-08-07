class CreateAddressCards < ActiveRecord::Migration
  def self.up
    create_table :address_cards do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :address_cards
  end
end
