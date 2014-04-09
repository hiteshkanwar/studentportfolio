class PhotoController < ApplicationController
  def image
    @photo=Photo.new
  end
  def show
     
    @photos=Photo.paginate(:page => params[:page])
     respond_to do |format|
     format.html
     format.js
   end
   end
   def  like_create
   @photo= Photo.find(params[:photo_id])
   if current_user.likes.where(:photo_id => params[:photo_id]).blank?
     @like = true
     current_user.likes.create(:photo_id=>params[:photo_id],:content=>params[:content])
  end
end
def unlike
     @photo= Photo.find(params[:photo_id])
   if !current_user.likes.where(:photo_id => params[:photo_id]).blank?
      current_user.likes.where(:photo_id => params[:photo_id]).first.destroy
    end
end
def create
    params[:photo][:avatar].each do |photo|
    @photos=current_user.photos.create(:avatar=>photo)
 end
    redirect_to :back
     
 end
end
