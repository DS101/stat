class GamesController < ApplicationController
  def index
    @games = Game.all    
  end

  def show
    @game = Game.find(params[:id])
    @home_team_players = Team.find(@game.home_team_id).players
    @away_team_players = Team.find(@game.away_team_id).players
  end
end
