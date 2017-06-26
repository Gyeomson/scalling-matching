class HomeController < ApplicationController
  before_action :require_login
  
  def index
  end
  
  def search
    @search = params[:search]
    @keyword = params[:keyword]
    
    if "#{@search}" == "제목"
      @search_post = Board.all.where("title LIKE ?", "%#{@keyword}%")
    elsif "#{@search}" == "내용"
      @search_post = Board.where("CONTENT LIKE ?", "%#{@keyword}%")
    else
      @search_post = Board.where("WRITER LIKE ?", "%#{@keyword}%")
    end
    
  end
end