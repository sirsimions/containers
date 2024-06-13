class ThirdPartySerializer < ActiveModel::Serializer
  attributes :id, :truck, :initialTruck, :container_number, :loaded_date, :destination, :customer, :dropping_point, :third_party_contact, :created_at
end
