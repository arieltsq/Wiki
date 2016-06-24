class CreatePhotoGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_galleries do |t|
      t.belongs_to :snoopies, foreign_key: true
      t.string :image_name
      t.string :image_url
      t.string :image_desc

      t.timestamps
    end
  end
end
