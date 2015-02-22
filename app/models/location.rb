class Location < ActiveRecord::Base
  include Syncable
  include Imageable

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  has_many :exhibits, dependent: :destroy
  has_many :displays, dependent: :destroy
  has_many :interests, dependent: :destroy

  has_attached_file :logo, :styles => { :medium => "350x350>", :thumb => "150x150>" }
  has_attached_file :background_image, :styles => { :medium => "350x350>", :thumb => "150x150>" }
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :background_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  geocoded_by :address

  after_validation :geocode, if: :address_changed?

  def address
    "#{street}, #{city}, #{state} #{zip_code}"
  end

  def logo_url
    absolute_image_url(logo)
  end

  def background_image_url
    absolute_image_url(background_image)
  end

  private

  def address_changed?
    street_changed? || city_changed? || state_changed? || zip_code_changed?
  end
end
