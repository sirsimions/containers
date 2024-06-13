class CreateContainerdetails < ActiveRecord::Migration[6.1]
  def change
    create_table :containerdetails do |t|
      t.string :truck
      t.string :containerNumber
      t.date :loadedDate
      t.string :destination
      t.date :expiryDate
      t.string :customer
      t.string :droppingPoint
      t.string :thirdPartyContact

      t.timestamps
    end
  end
end
