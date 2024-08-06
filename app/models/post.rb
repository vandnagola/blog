# frozen_string_literal: true

class Post < ActiveRecord::Base
  belongs_to :user

  def fetch_random_image
    search_query = title
    return nil if search_query.blank?

    photos = Unsplash::Photo.search(search_query)
    if photos.any?
      random_photo = photos.sample
      random_photo.urls.full
    else
      'Default_Image_URL'
    end
  end
end
