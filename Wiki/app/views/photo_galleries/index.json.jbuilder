json.array!(@photo_galleries) do |photo_gallery|
  json.extract! photo_gallery, :id, :snoopies, :image_name, :image_url, :image_desc
  json.url photo_gallery_url(photo_gallery, format: :json)
end
