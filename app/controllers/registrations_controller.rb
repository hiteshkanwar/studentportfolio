class RegistrationsController < Devise::RegistrationsController
	
  def create
    
    if !params[:role].blank?
      @user = User.new(params[:user])
      if !Role.find_by_name(params[:role]).blank?
        @role= Role.find_by_name(params[:role])
        @user.user_roles.new(:role_id => @role.id)
      else 
        @user.roles.new(:name => params[:role])
        @user.user_roles.new()
      end 
      if @user.save 
         if params[:role]=="student"
          @student= @user.build_student(:description=>params[:description])
          @student.save
          else
          @school= @user.build_school(:description=>params[:description],:school_name=>params[:school_name])
          @school.save
        end
          sign_in_and_redirect(@user)
      else
        super
      end
    else
      redirect_to :back
    end
     
  end 
end 