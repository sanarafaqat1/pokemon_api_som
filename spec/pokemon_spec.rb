describe PokemonApiService do

  attr_accessor :get_pokemon_data

  before(:all) do
    @ditto_service = PokemonApi.new.ditto_service
    @ditto_service.get_pokemon_data
  end

  it 'should be a hash' do
    expect(@ditto_service.get_pokemon_data).to be_kind_of Hash
  end

  it 'should resturn ability between 1-7' do
    expect(@ditto_service.get_ability.length).to be_between(1,7).inclusive
  end

  it 'should return name as a String' do
    expect(@ditto_service.get_abilities_name).to be_kind_of String
  end

  it 'the url should be a string' do
    expect(@ditto_service.get_url).to be_kind_of String
  end

  it 'the slot should be an integer' do
    expect(@ditto_service.get_slot).to be_kind_of Integer
  end
end
