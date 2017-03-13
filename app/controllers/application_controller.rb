class ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Basic::ControllerMethods
	include ActionController::Serialization
	before_filter :authenticate

	def authenticate
		authenticate_or_request_with_http_basic('Administration') do |username, password|
		  username == 'admin' && password == 'password'
		end
	end
end