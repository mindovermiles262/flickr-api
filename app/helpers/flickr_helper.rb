module FlickrHelper
  def user_photos(user_id, photo_count = 20)
    flickr.photos.search(:user_id => user_id).first(photo_count)
  end

  def get_id_from_username(username)
    begin
      flickr.people.findByUsername(:username => username)     
    rescue => exception
      render :partial => '/flickr/user_not_found'
    end
  end

  def render_flickr_stream(user_id, photo_count = 20, columns = photo_count)
    begin
      photos = user_photos(user_id, photo_count).in_groups_of(columns)
      render  :partial => '/flickr/flickr_widget', 
              :locals => { :photos => photos }
    rescue => exception
      render :partial => '/flickr/user_not_found'
    end
  end
end