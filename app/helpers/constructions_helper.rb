module ConstructionsHelper
   def form_title
      @construction.new_record? ? "Nuevo Curso" : "Editar Curso"
   end

   def form_button
      @construction.new_record? ? "CREAR" : "EDITAR"
   end

   def form_button_class
      @construction.new_record? ? "success" : "warning"
   end
end
