class SitemapController < ApplicationController
  def index
  	#get current date and time
  	current_dt = Time.now.strftime("%B %d, %Y, %A %H %M")
  	#create a string version of date and time

  	#session is a hash {}
  	# 'first_visit' +> current_dt
  	#store current date and time in the session
  	#if its our first visit

  	if session['first_visit'] == nil
  	session['first_visit'] = current_dt
  	end



  	#pull the date and time _from_ the session and make available to the view

  	@first_visit = session['first_visit']
  end
end
