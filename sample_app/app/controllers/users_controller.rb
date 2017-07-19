class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

  def new
  	@user = User.new
  end

  def create
		@user = User.new(params[:user]) 			# 不是最终的实现方式
		if @user.save      
			# 处理注册成功的情况 
		else
			render 'new' 
		end
	end

end
