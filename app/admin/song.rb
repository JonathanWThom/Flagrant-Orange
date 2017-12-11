ActiveAdmin.register Song do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  permit_params :title, :lyrics, :audio, :rank

  form do |f|
    f.inputs "Song Details" do
      f.input :rank
      f.input :title
      f.input :lyrics
      f.input :audio, :as => :file
      # Will preview the image when the object is edited
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
