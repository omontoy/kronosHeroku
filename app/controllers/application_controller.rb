class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :warning, :danger, :info

  def private_access
    @postUser = Construction.find(params[:id]).user
    if @postUser != current_user
      flash[:danger] = "No tienes permiso para editar ese POST !!"
      redirect_to root_path
    end
  end

end
