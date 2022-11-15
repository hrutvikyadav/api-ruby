class CreateTestObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :test_objects do |t|

      t.timestamps
    end
  end
end
