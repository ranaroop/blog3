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

  def myportfolio
    chosen_category = params['category']
    @project = Project.where(category: 'rails').all
    #@project = Project.all
  end


#params are rails parameters when you submit a form. if in a form, there is a box within a category. save in variable.

  def pics
    url1 = {'Carrots' => 'carrots.JPG'} 
	  url2 = {'Pancakes' => 'pancakes.JPG'} 
    url3 = {'Lemons' => 'lemons.JPG'} 
    url4 = {'Tomatoes' => 'tomatoes.JPG'}
    url5 = {'Sunflower' => 'sunflower.JPG'}
    url6 = {'Bracelet' => 'bracelts.JPG'}
    url7 = {'Roop Groop' => 'roopgroup.JPG'}
    @image_urls = [url1, url2, url3, url4, url5, url6, url7 ]
	  # @image_urls = [url1, url2, url3, url4, url5, url6]
  end

end
