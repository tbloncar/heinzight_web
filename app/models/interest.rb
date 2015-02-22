class Interest < ActiveRecord::Base
  include Syncable
  include Imageable

  validates :name, presence: true
  validates :location, presence: true

  belongs_to :location
  has_many :display_interests, dependent: :destroy
  has_many :displays, through: :display_interests

  has_attached_file :image, :styles => { :medium => "350x350>", :thumb => "150x150>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def image_url
    absolute_image_url(image)
  end
end
