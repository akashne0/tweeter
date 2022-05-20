module ApplicationHelper


    def user_image(user,size=40)
        if user.image.attached?
          user.image.variant(resize:"#{size}x#{size}!")
        else
          # gravatar_image_url(user.email,size:size)
          # asset_path 'male.jpg' 
        end
    end
end


