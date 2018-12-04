require 'json'
require 'httparty'

class PokemonApiService
  include HTTParty

  base_uri 'https://pokeapi.co'

  def get_pokemon_data
    @pokemon_data = JSON.parse(self.class.get("/api/v2/pokemon/ditto/").body)
  end

  def get_ability
    @pokemon_data['abilities'][0]
  end

  def get_abilities_name
    @pokemon_data['abilities'][0]['ability']['name']
  end

  def get_url
    @pokemon_data['abilities'][0]['ability']['url']
  end

  # def get_slot
  #   @pokemon_data['abilities'][0][1]
  # end
end
