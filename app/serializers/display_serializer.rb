class DisplaySerializer < ActiveModel::Serializer
  attributes :id, :name, :beacon_uuid,
    :beacon_major_num, :beacon_minor_num, :exhibit_id, :image_url,
    :adult_content_html, :child_content_html

  def adult_content_html
    html_for_content_items(object.adult_content_items) 
  end

  def child_content_html
    html_for_content_items(object.child_content_items) 
  end

  private

  def html_for_content_items(content_items)
    html = File.open(Rails.root.join("app", "views", "mobile", "detail.html.erb")).read
    template = ERB.new(html)
    namespace = OpenStruct.new(content_items: content_items)
    template.result(namespace.instance_eval { binding })
  end
end
