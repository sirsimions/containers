class CreateThirdParties < ActiveRecord::Migration[6.1]
  def change
    create_table :third_parties do |t|
      t.string :truck
      t.string :container_number
      t.date :loaded_date
      t.string :destination
      t.string :customer
      t.string :dropping_point
      t.string :third_party_contact

      t.timestamps
    end
  end
end
