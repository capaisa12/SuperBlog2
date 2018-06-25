class SessionsController < ApplicationController

  before_action :private_access, only: [:destroy]
  before_action :public_access, except: [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path, alert: "Bienvenido a SuperBlog, en este espacio usted podra crear nuevos post, editar o eliminar los que sean de su propiedad y votar o comentar cualquiera de los post que mas le gusten."
    else
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end


end
