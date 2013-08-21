class HomeController < ApplicationController
  def index
  	@pop_clubs = Club.order("join_clubs_count desc").limit(10)
  	@last_parties = Party.order("created_at desc").limit(10)
  	@act_clubs = Club.order("parties_count desc").limit(10)
  end

  def club
  	@clubs = Club.order("id asc").limit(50)
  end

  def party
  	@parties = Party.order("id desc").limit(50)
  end

  def about
  end

  def contact
  end
end
