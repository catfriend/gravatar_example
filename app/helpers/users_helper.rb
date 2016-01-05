module UsersHelper
  def profile_image_for(user)
    url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"

    # url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}?s=200"
    image_tag(url, alt: user.name)
  end
end

# Step 2: add a custom view helper that takes a user object as a parameter
# The default size is 80 pixels. If you wish to resize, follow the commented
# out code above with the desired pixel size. As images are square only one
# size parameter is needed.