class WelcomeController < ApplicationController
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

	def set_name
	@user_name = params['user_name']
	session['user_name'] = @user_name
	end


  	#pull the date and time _from_ the session and make available to the view

  	@first_visit = session['first_visit']



		if session["counter"] == nil
			session["counter"] = 0
		end

		
		if session["counter"] == 0
  			session["visit"] = ["1 fish","2 fish","red fish","blue fish",]
  			@message = session["visit"].join(" ")
  		end
  		
		if session["counter"] == 1
  			@message = session["visit"][0]
  		end

  		if session["counter"] == 2
  			@message = session["visit"][1]
  		end

  		if session["counter"] == 3
  			@message = session["visit"][2]
  		end

  		if session["counter"] == 4
  			@message = session["visit"][3]
  		end

  		if session["counter"] >= 4
  			@message = "Fini!"
  		end

  		session["counter"] += 1

  	end

  end

