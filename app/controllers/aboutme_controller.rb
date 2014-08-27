  def index
  end

  def pics
  	@url1 = 'beach-at-night-wallpaper.jpg'
  	url2 =   'http://www.nrcc.org/wp-content/uploads/2014/03/sinking-ship.jpg'
 	url3 =   'http://cdn.thewire.com/img/upload/2011/06/10/sinking-ship-cartoon.jpg'
  	@image_urls = [@url1, url2, url3]
  end

  def portfolio
    @projects = Project.all
  end
end