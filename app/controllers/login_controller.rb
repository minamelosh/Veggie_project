#login form
get '/login/new' do
  erb :'login/new'
end

#create new session
post '/login' do
  @user = User.find_by(first_name: params[:user][:first_name])
  if @user && @user.authenticate?(params[:user][:hashed_password])
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
   @errors = ["incorrect username or password"]
   erb :'/login/new'
  end
end

#logout
get '/logout/:id' do
  session[:id] = nil
  redirect '/'
end
