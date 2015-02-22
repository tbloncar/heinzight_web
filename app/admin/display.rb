ActiveAdmin.register Display do

  permit_params :name, :child_content, :adult_content, :beacon_uuid,
    :beacon_major_num, :beacon_minor_num, :location_id, :exhibit_id, :image

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name
      f.input :child_content, as: :html_editor, label: "Content for Children"
      f.input :adult_content, as: :html_editor, label: "Content for Adults"
      f.input :beacon_uuid, label: "Beacon UUID"
      f.input :beacon_major_num, label: "Beacon Major #"
      f.input :beacon_minor_num, label: "Beacon Minor #"
      f.input :location, prompt: "Select Location"
      f.input :exhibit, prompt: "Select Exhibit"
      f.input :image, :as => :file
    end

    f.actions
  end
end
