class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.text :info_text
      t.float :latitude
      t.float :longitude
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :phone_municipality
      t.string :phone_info_tourism

      t.timestamps null: false
    end
  end
end
