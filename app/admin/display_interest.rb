ActiveAdmin.register DisplayInterest do
  permit_params :display_id, :interest_id

  form do |f|
    f.inputs "Details" do
      f.input :display, prompt: "Select Display"
      f.input :interest, prompt: "Select Interest"
    end

    f.actions
  end
end
