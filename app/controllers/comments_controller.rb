class CommentsController < ApplicationController
   def create
      construction = Construction.find(params[:construction_id])
      construction.comments.create(comments_params)

      redirect_to construction
   end

   def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      flash[:info] = "Comentario eliminado exitosamente !!"
      redirect_to construction_path(@comment.construction.id)
   end

   private
     def comments_params
       params.require(:comment).permit(:body).merge(user: current_user)
     end
end
