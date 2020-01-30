class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
    @comment.user_id = current_user.id
  end
  
  def create
    @comment = current_user.comments.new(comment_params)
    #@comment.topic_id = params[:topic_id]
      
    
    if @comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end 
  end
  
  private
  def comment_params
    params.require(:comment).permit(:description, :topic_id, :user_id)
  end
end
    
  
  
  
    
  
  



  

  
  
    
  

        
