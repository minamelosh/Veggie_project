#login form
get '/sessions/new' do
  erb :'sessions/new'
end

#create new session
post '/sessions' do
  @user = User.where(name: params[:user][:name]).first
  if @user && @user.authenticate?(params[:user][:password])
    session[:id] = @user.id
    redirect "users/#{@user.id}"
  else
   @errors = []
   @errors << "incorrect username or password"
   erb :'sessions/new'
  end
end

#logout
delete '/sessions/:id' do
  session[:id] = nil
  redirect 'sessions/new'
end
