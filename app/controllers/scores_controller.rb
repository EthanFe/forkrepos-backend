class ScoresController < ApplicationController
  def create
      user = User.find_or_create_by(name: params[:username])
      user.scores.create(kills: params[:kills], cookies_fired: params[:cookiesFired], cookies_hit: params[:cookiesHit])
  end
end
