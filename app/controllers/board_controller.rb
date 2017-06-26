class BoardController < ApplicationController
  before_action :require_login
  
  def board
    @one_board = Board.find(params[:post_id])
    @all_comment = Comment.all
  end
  
  def list
    @every_post = Board.all
    @univ = params[:keyword]
  end
  
  def write
    new_post = Board.new
    
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.writer = current_user.email
    new_post.region = params[:region]
    new_post.school = params[:school]
    new_post.total = params[:total]
    new_post.count = 0
    
    new_post.save

    redirect_to '/list/'+"#{new_post.school}"
      
  end
  
  def count
    @one_board = Board.find(params[:post_id])
    new_register = Register.new
    
    @one_board.count = @one_board.count.next
    
    new_register.post_id = @one_board.id
    new_register.order = "#{@one_board.count}"
    new_register.registor = current_user.email
    
    new_register.save
    @one_board.save
    
    @every_register = Register.all
    
    redirect_to '/board/'+"#{@one_board.id}"
  end
  
  def comment_create
    comment = Comment.new
    
    comment.mention = params[:mention]
    comment.post_id = params[:post_id]
    comment.writer = current_user
    
    comment.save
    
    redirect_to :back
  end
  
  
  
  
  def destroy
    @one_board = Board.find(params[:post_id])
    @school1 = @one_board.school
    @one_board.destroy

    if @school1 == "건양대학교"
      redirect_to '/list/건양대학교'
    elsif @school1 == "대전 과학기술대학교"
      redirect_to 'list/대전 과학기술대학교'    
    else
      redirect_to 'list/대전 보건대학교'
    end 
  end
  
  def update_view
    @one_post = Board.find(params[:post_id])
  end
  
  def update_write
    @one_post = Board.find(params[:post_id])
    
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.region = params[:region]
    @one_post.school = params[:school]
    @one_post.save
    
    if @one_post.school == "건양대학교"
      redirect_to '/list/건양대학교'
    elsif @one_post.school == "대전 과학기술대학교"
      redirect_to 'list/대전 과학기술대학교'    
    else
      redirect_to 'list/대전 보건대학교'
    end  
    
  end
end
