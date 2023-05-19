class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
