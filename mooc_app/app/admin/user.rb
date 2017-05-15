ActiveAdmin.register User do
    permit_params :name, :gender, :email, :birth_date, :profile_pic_url, :sign_in_count
end
