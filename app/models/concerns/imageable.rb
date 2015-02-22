module Imageable
  extend ActiveSupport::Concern

  def absolute_image_url(image)
    return unless image

    "http://heinzight.s3-website-us-west-2.amazonaws.com" + image.path
  end
end
