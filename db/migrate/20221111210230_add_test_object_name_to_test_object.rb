class AddTestObjectNameToTestObject < ActiveRecord::Migration[7.0]
  def change
    add_column :test_objects, :test_object_name, :string
  end
end
