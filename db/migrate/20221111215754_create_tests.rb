class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :test_name
      t.integer :channel
      t.string :bar_code
      t.string :creator
      t.string :comment

      t.timestamps
    end
  end
end
