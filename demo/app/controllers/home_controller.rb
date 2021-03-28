class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_description = Faker::Superhero.descriptor
    @hero_prefix = Faker::Superhero.prefix
    @hero_suffix = Faker::Superhero.suffix
    @avatar = Faker::Avatar.image
    @hero_dayjob = Faker::Job.field
    @hero_realname = Faker::Name.first_name + ' ' + Faker::Name.last_name
    @hero_archenemy = Faker::Ancient.hero
  end
  
  def index 
  end

  def team
  end
end
