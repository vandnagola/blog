class Post < ActiveRecord::Base
  belongs_to :user

  def fetch_random_image
    search_query = self.title
    photos = Unsplash::Photo.search(search_query)
    if photos.any?
      random_photo = photos.sample
      random_photo.urls.full
    else
      "Default_Image_URL" # Fallback image URL if no photos are found
    end
  end
end
