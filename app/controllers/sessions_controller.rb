class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    input_username = params[:user][:username]
    if User.exists?(username: input_username)
      @user = User.find_by(username: input_username)

    if @user.password == params[:user][:password]
      puts "You'are signed in!"
      sessions[:user_id] = @user
      redirect_to root_path
end
  else
    puts "That user doesn't exist!"
    redirect_to new_session_path
  end
end

def destroy
  reset session
  puts "You'are signed out!"
  redirect_to :root
end
