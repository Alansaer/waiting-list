# For displaying and controlling the home page
# This page allows you to sign in if you are an existing user
# It also will display the new user page and handle new user creation.
class UsersController < ApplicationController
  def index
    #for displaying home page
  end

  def create_to_queue
    @user = User.all
    #Redirect To couselor page if user is counselor(jjbetz = John Josh Brian Eric Tae Zach)
    if existing_user_params.downcase == "jjbetz@cemail.com"
 	  redirect_to action: 'index', controller: 'guestlists' 
      #for adding existing user to guestlist
    elsif @user.valid_email?(existing_user_params)
        Guestlist.create(user_id: User.find_by(email: existing_user_params).id)
        flash[:success] = 'Thank you for signing in, please wait to be called'
        redirect_to action: 'index'
      else
        #display error message if user not found
        flash[:danger] = 'Sorry, User not found'
	      redirect_to action: 'index'
    end
  end

  def new
    #for displaying the new user form
    @user = User.new
  end

  def create
    #for adding new users to database
    @user = User.create(new_user_params)
    @guest = Guestlist.create(user_id: User.last.id)
    redirect_to action: 'index'
  end

  def update
    #update from hitting 'Finish' in guest list show page
    redirect_to controller: 'guestlists', action: 'index'
    Guestlist.find_by(user_id: params[:id]).destroy
    user = User.find(params[:id])
    user.notes = params[:user][:notes]
    user.save
    #User.update(notes: update_params)
  end

  private
  def existing_user_params
    params.require(:email)
  end

  private
  def new_user_params
    params.require(:user).permit(:fname, :lname, :email)
  end
end
