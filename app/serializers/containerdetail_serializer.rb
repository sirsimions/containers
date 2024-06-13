class ContainerdetailSerializer < ActiveModel::Serializer
  attributes :id, :truck, :containerNumber, :loadedDate, :destination, :expiryDate, :customer, :droppingPoint, :thirdPartyContact, :created_at
end
