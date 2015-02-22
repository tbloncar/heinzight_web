class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo_url, :background_image_url, :latitude,
    :longitude

  has_many :exhibits
  has_many :displays
  has_many :interests
end
