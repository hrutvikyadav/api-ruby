class AddScheduleNameToScheduleFile < ActiveRecord::Migration[7.0]
  def change
    add_column :schedule_files, :schedule_name, :string
  end
end
