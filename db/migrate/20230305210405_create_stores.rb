class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :style

      t.timestamps
    end
  end
end
