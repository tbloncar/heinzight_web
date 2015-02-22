class ChildContentItem < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :display
end
