class StaticPagesController < ApplicationController
  require 'flickr'
  def index
    @flickr = Flickr.new
    if request.query_string.present? 
      @user_id = params[:user][:id]
      @photos = @flickr.people.getPhotos(:user_id => @user_id)
    end
  end
end
