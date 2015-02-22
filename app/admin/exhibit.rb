ActiveAdmin.register Exhibit do
  permit_params :name, :location_id, :image

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name
      f.input :location, prompt: "Select Location"
      f.input :image, :as => :file
    end

    f.actions
  end
end
