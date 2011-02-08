class SayHelloController < ApplicationController
	def showFamily( aClass, msg )
		if (aClass != nil) then
			msg += "<li>#{aClass}</li>"
			showFamily( aClass.superclass, msg )
		else
			render :text => msg
		end 
	end
	def index
		@heading = "<h1>This is the controller's class hierarchy</h1>"
		@class_hierarchy = "<ul>#{showFamily( self.class, "")}</ul>"
	end
end
		