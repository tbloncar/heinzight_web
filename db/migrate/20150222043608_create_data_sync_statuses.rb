class CreateDataSyncStatuses < ActiveRecord::Migration
  def change
    create_table :data_sync_statuses do |t|
      t.bigint :version, default: 1

      t.timestamps
    end
  end
end
