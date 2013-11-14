class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:nickname], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_path, notice: '¡Bienvenido!'
  	else
  		flash.now.alert = 'Error en mote y/o contraseña'
      render 'new'
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: '¡Hasta pronto!' 
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def session_params
    params.require(:session).permit(:nickname, :password)
  end

end
