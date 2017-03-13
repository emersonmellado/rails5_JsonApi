require 'digest'

class ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Basic::ControllerMethods
	include ActionController::Serialization 	
	before_filter :authenticate

	def authenticate
		authenticate_or_request_with_http_basic('Administration') do |username, password|
			md5_of_password = Digest::MD5.hexdigest(password)
			username == 'admin' && md5_of_password == 'd3e5b482609e714465ac95093e248d8f'
		end
	end
end