class OfficeSerializer < ActiveModel::Serializer
  attributes :id, :address
  has_many :rooms
end