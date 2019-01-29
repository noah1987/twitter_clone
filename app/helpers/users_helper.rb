module UsersHelper

  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    default_url = "http://www.myiconfinder.com/uploads/iconsets/48-48-a8ec7260e846060d86380579bbcd3285.png"
    #gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=#{CGI::escape(default_url)}"

    image_tag(gravatar_url, alt: user.name, class: "gravatar", default: 'https://example.com/images/avatar.jpg')
  end
end
