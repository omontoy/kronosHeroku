class HmcoursesController < ApplicationController
  def index
    @hmcourses = Hmcourse.all
  end

  def import
    Hmcourse.import(params[:file])
    redirect_to hmcourses_url, notice: "Datos cargados con éxito"
  end
end
