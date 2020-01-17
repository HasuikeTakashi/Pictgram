class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment.user_id = current_user.id
    @comment.topic_id = params[:topic_id]

    
    if @comment.save
      redirect_to topic_path, success: 'コメントしました'
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end 
  end
end
    
  
  



  

  
  
    
  

        
