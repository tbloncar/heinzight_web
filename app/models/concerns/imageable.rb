module Imageable
  extend ActiveSupport::Concern

  ROOT_URL = "http://heinzight.herokuapp.com"

  def absolute_image_url(image)
    return unless image

    ROOT_URL + image.url
  end
end
