class ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Basic::ControllerMethods
	include ActionController::Serialization
	http_basic_authenticate_with username: "erm", password: "pass"

end