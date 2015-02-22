class AdultContentItem < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :display
end
