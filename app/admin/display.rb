ActiveAdmin.register Display do

  permit_params :name, :child_content, :adult_content, :beacon_uuid,
    :beacon_major_num, :beacon_minor_num, :location_id, :exhibit_id, :image,
    adult_content_items_attributes: [:title, :content],
    child_content_items_attributes: [:title, :content]

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name
      f.input :beacon_uuid, label: "Beacon UUID"
      f.input :beacon_major_num, label: "Beacon Major #"
      f.input :beacon_minor_num, label: "Beacon Minor #"
      f.input :location, prompt: "Select Location"
      f.input :exhibit, prompt: "Select Exhibit"
      f.input :image, :as => :file
    end

    f.inputs "Content Items for Adults" do
      f.has_many :adult_content_items do |a|
        a.input :title
        a.input :content, as: :html_editor
      end
    end

    f.inputs "Content Items for Children" do
      f.has_many :child_content_items do |a|
        a.input :title
        a.input :content, as: :html_editor
      end
    end

    f.actions
  end
end
