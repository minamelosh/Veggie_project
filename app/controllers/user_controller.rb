#user index page with ability to login or register
get '/users' do
  erb :'users/index'
end

#user registration form
get '/users/new' do
  erb :'users/new'
end

#creates new user
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect :"/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end


#redirects new created user to their profile page
get '/users/:id' do
  @user = User.find(params[:id])
  if session[:id] == @user.id
    erb :'users/show'
  else
    @errors = ["You don't have access!"]
    erb :'sessions/new'
  end
end
