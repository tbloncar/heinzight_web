class LocationSerializer < ActiveModel::Serializer
  has_many :exhibits
  has_many :displays
  has_many :interests
end
