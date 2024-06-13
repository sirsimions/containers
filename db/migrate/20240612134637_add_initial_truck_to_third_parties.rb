class AddInitialTruckToThirdParties < ActiveRecord::Migration[6.1]
  def change
    add_column :third_parties, :initialTruck, :string
  end
end
