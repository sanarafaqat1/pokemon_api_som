#Inclde in the services
require_relative 'service/ditto_service'

class PokemonApi

  def ditto_service
    PokemonApiService.new
  end
end
