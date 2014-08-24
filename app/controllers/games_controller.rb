class GamesController < ApplicationController
  def memory

  	if session['all_tiles'].nil?

	  @all_tiles = {
	    '0,0' => 'git-icon.png',
	    '0,1' => 'github-icon.png',
	    '0,2' => 'heroku-icon.png',
	    '1,0' => 'osx-terminal-icon.png',
	    '1,1' => 'ruby-icon.png',
	    '1,2' => 'Sublime_Text-icon.png'
	  }
	  session['all_tiles'] = @all_tiles
	  session['possible'] = @all_tiles.keys
	  session['wrong'] = []
	  session['correct'] = []

	elsif !session['possible'].empty?
	
	  @tile_loc = session['possible'].sample
	  session['possible'].delete(@tile_loc)
      @tile = session['all_tiles'][@tile_loc]

      unless params['x'].nil?

      	guess = "#{params['x']},#{params['y']}"
      	answer = params['correct_answer']
	    if guess == answer
	      session['correct'] << answer
	    else
	      session['wrong'] << answer
	    end
	  end

	else

	  @score = session['correct'].length
	end
  end
end