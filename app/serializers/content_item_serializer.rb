class ContentItemSerializer < ActiveModel::Serializer
  attributes :html

  def html
    html = File.open(Rails.root.join("app", "views", "mobile", "detail.html.erb"))
  end
end
