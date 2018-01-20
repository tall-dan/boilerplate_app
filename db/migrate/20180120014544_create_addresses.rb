class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string     :building_number, null: false
      t.string     :apt_or_unit_number
      t.string     :street, null: false
      t.string     :city, null: false
      t.string     :state, null: false
      t.string     :zip_code, null: false
      t.timestamps
    end
  end
end
