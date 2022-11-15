class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.integer :data_point
      t.float :test_time_s
      t.float :step_time_s
      t.integer :cycle_index
      t.integer :step_index
      t.float :current_a
      t.float :voltage_v
      t.float :power_w

      t.timestamps
    end
  end
end
