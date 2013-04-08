class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :is_pubilc
      t.integer :capacty

      t.timestamps
    end
  end
end
