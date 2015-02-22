class DisplayInterest < ActiveRecord::Base
  include Syncable

  validates :display, presence: true
  validates :interest, presence: true

  belongs_to :display
  belongs_to :interest
end
