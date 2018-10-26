class ScoresController < ApplicationController
  def create
      user = User.find_or_create_by(name: params[:username])
      kills = params[:kills] ? params[:kills] : 0
      cookies_fired = params[:cookiesFired] ? params[:cookiesFired] : 0
      cookies_hit = params[:cookiesHit] ? params[:cookiesHit] : 0
      user.scores.create(kills: kills, cookies_fired: cookies_fired, cookies_hit: cookies_hit)
  end

  def all
    render json: (Score.all.map do |score|
      {name: score.user.name, kills: score.kills, cookies_fired: score.cookies_fired, cookies_hit: score.cookies_hit}
    end.sort_by do |score|
      score[:kills]
    end)
  end
end
