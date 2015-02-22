class DisplaySerializer < ActiveModel::Serializer
  attributes :id, :name, :child_content, :adult_content, :beacon_uuid,
    :beacon_major_num, :beacon_minor_num, :exhibit_id, :image_url
end
