module Syncable
  extend ActiveSupport::Concern

  included do
    after_save :update_data_sync_status_version
  end

  private

  def update_data_sync_status_version
    status = DataSyncStatus.first
    status.update(version: status.version + 1)
  end
end
