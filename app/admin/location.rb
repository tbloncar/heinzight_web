ActiveAdmin.register Location do
  permit_params :name, :street, :city, :state, :zip_code,
    :logo, :background_image

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name
      f.input :street
      f.input :city
      f.input :state
      f.input :zip_code
      f.input :logo, :as => :file
      f.input :background_image, :as => :file
    end

    f.actions
  end
end
