class Display < ActiveRecord::Base
  include Syncable
  include Imageable

  validates :name, presence: true
  validates :beacon_uuid, presence: true
  validates :beacon_major_num, presence: true
  validates :beacon_minor_num, presence: true, uniqueness: { scope: :beacon_uuid }
  validates :location, presence: true

  belongs_to :location
  belongs_to :exhibit
  has_many :display_interests, dependent: :destroy
  has_many :interests, through: :display_interests
  has_many :adult_content_items
  has_many :child_content_items

  accepts_nested_attributes_for :adult_content_items
  accepts_nested_attributes_for :child_content_items

  has_attached_file :image, :styles => { :medium => "350x350>", :thumb => "150x150>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def image_url
    absolute_image_url(image)
  end
end
