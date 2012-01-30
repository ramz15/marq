class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # simple route for Facebook's channel.html for cross-domain requests.
  # TODO: Add cache expiration to this, and also page caching.
  def channel
    respond_to do |format|
      format.html { render 'shared/channel', :layout => false }
    end
  end
end
