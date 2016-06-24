require 'test_helper'

class PhotoGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_gallery = photo_galleries(:one)
  end

  test "should get index" do
    get photo_galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_gallery_url
    assert_response :success
  end

  test "should create photo_gallery" do
    assert_difference('PhotoGallery.count') do
      post photo_galleries_url, params: { photo_gallery: { image_desc: @photo_gallery.image_desc, image_name: @photo_gallery.image_name, image_url: @photo_gallery.image_url, snoopies: @photo_gallery.snoopies } }
    end

    assert_redirected_to photo_gallery_path(PhotoGallery.last)
  end

  test "should show photo_gallery" do
    get photo_gallery_url(@photo_gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_gallery_url(@photo_gallery)
    assert_response :success
  end

  test "should update photo_gallery" do
    patch photo_gallery_url(@photo_gallery), params: { photo_gallery: { image_desc: @photo_gallery.image_desc, image_name: @photo_gallery.image_name, image_url: @photo_gallery.image_url, snoopies: @photo_gallery.snoopies } }
    assert_redirected_to photo_gallery_path(@photo_gallery)
  end

  test "should destroy photo_gallery" do
    assert_difference('PhotoGallery.count', -1) do
      delete photo_gallery_url(@photo_gallery)
    end

    assert_redirected_to photo_galleries_path
  end
end
