class MypageController < ApplicationController
    before_action :require_login
  def mypage
   @every_post = Board.all
   @every_register = Register.all
   @all_comment = Comment.all
  end
  
end
