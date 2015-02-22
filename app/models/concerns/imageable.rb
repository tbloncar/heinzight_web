module Imageable
  extend ActiveSupport::Concern

  ROOT_URL = ":s3_domain_url"

  def absolute_image_url(image)
    return unless image

    ROOT_URL + image.url
  end
end
