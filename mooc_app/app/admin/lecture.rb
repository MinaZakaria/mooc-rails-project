ActiveAdmin.register Lecture do
    permit_params :name, :content, :course_id, :attachment
end
