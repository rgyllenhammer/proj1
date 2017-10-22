class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @cur_trainer = current_trainer
    
    @pokemons = @trainer.pokemons
  end

end
