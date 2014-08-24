class MyportfolioController < ApplicationController
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

  def pics
  	@url1 = 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpa1/t1.0-9/1560656_10152670763173254_4200004522404042888_n.jpg' 
	url2 = 'http://www.boothedog.net/wp-content/uploads/2011/07/Boo-The-Dog-sad.jpg' 
	url3 = 'http://upload.dogzer.com/img_global/4-chien/_light-122116-boo.jpg'  
	@image_urls = [@url1, url2, url3]

  end
end
