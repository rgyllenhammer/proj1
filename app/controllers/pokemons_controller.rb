class PokemonsController < ApplicationController

  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer = current_trainer
    pokemon.save

    redirect_to root_path
  end

  def new
  end

  def add_pokemon
    name = params[:name]
    currId = current_trainer.id.to_s

    if Pokemon.create(:name => name, :health => 100, :level => 1, :trainer => current_trainer).valid?
      Pokemon.create(:name => name, :health => 100, :level => 1, :trainer => current_trainer).valid?

      redirect_to '/trainers/'+currId
    else
      flash[:error] = 'Error adding Pokemon: You must add a name and make sure it is not a duplicate'

      redirect_to '/pokemon/new'
    end

  end

  def damage
    pokemon = Pokemon.find(params[:id])
    currId = pokemon.trainer.id.to_s

    pokemon.health = pokemon.health - 10
    if pokemon.health > 0
      pokemon.save
    else
      pokemon.destroy
    end

    redirect_to '/trainers/'+currId
  end

end
