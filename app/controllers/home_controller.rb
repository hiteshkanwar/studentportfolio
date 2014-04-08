class HomeController < ApplicationController
  def index
     
  	if user_signed_in?
    	@role=current_user.roles.first.name
    end
  end
   def main
   end


 
 def create

  if !params[:feed][:content].blank?
    @school=current_user.school
    @feed = @school.feeds.create(params[:feed])
      params[:user_id].each do |user_id|
        @student_id = User.find(user_id).student.id
        @feed_student = @feed.feed_students.create(:student_id => @student_id)
        @feed_student.save
      end   
  end
    redirect_to :back
  end
  
  def dynamic_form
  end
  def blog_list 
    @feed=Feed.new
    @approved_students = current_user.school.student_schools.find_all_by_status(true)
    @user = @approved_students.collect{|p| p.student.user}
    @feeds=current_user.school.feeds
  end
 
  def school 
    @student = current_user.student
  	@schools = School.all
  end
  
  def approve_reject
    @school=current_user.school
    @student_school = @school.student_schools.find_by_student_id(params[:student_id]) 
    if params[:reject] == "true"
       @student_school.destroy
    else
       @student_school.update_attributes(:status => true)
    end
    @student_requests = current_user.school.student_schools
  end
  
  def students    
    @student_requests = current_user.school.student_schools
  end
  
  def student_request
    @student = current_user.student
     if @student.student_schools.blank?
      @student.student_schools.create(:school_id => params[:school_id])   
     end
  end
end