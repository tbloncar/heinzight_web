class DataSyncStatus < ActiveRecord::Base
  def self.create
    super() unless first
  end
end
