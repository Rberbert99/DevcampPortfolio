
class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include DeviseWhitelist
    include SetSource
    include DefaultPageContent


   before_action :set_copyright

   def set_copyright
	@copyright = RexViewTool::Renderer.copyright 'Rex Berbert', 'All rights reserved'
   end
end


