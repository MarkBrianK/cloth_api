class CreateCloths < ActiveRecord::Migration[7.0]
  def change
    create_table :cloths do |t|
      t.string :name
      t.string :category
      t.string :size
      t.string :image_url
      t.float :price

      t.timestamps
    end
  end
end
