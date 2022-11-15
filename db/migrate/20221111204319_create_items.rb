class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.integer :value
      t.boolean :mandatory

      t.timestamps
    end
  end
end
