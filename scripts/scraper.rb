form do |f|
    f.inputs "Member Details" do
        f.input :first_name
        f.input :last_name
        f.input :email
        if !f.object.new_record?
            f.input :password
            f.input :password_confirmation
        end
    end
    f.button :Submit
end

trained