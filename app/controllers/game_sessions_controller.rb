class GameSessionsController < ApplicationController
  def show
    @game_session = GameSession.find(params[:id])
    @players = @game_session.game.players.map { PlayerSerializer.new(_1).as_json }
  end
end
