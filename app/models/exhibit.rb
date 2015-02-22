class Exhibit < ActiveRecord::Base
  include Syncable

  validates :name, presence: true

  belongs_to :location
  has_many :displays

  has_attached_file :image, :styles => { :medium => "350x350>", :thumb => "150x150>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end