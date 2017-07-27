ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  require 'rails/test_help'
  require "minitest/reporters"
  Minitest::Reporters.use!
class ActiveSupport::TestCase
	fixtures :all

	# 如果用户已登录，返回 true 
	def is_logged_in?
		!session[:user_id].nil? 
	end
end