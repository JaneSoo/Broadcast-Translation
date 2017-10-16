class HomeController < BaseController
  def index
  end

  def event
    @events = Event.all
    @rooms = BroadcastRoom.all
  end

  def about
    
  end

end
