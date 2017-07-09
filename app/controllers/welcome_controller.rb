class WelcomeController < ApplicationController
	 


	layout 'test'
	before_action :confirm_logged_in
end