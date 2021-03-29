class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  def common
    @hero = Hero.new(
      Faker::Superhero.name,
      Faker::Superhero.power,
      Faker::Superhero.descriptor,
      Faker::Superhero.prefix,
      Faker::Superhero.suffix,
      Faker::Avatar.image,
      Faker::Job.field,
      Faker::Name.first_name + ' ' + Faker::Name.last_name,
      Faker::Ancient.hero,
      Faker::Company.bs.titleize,
      rand(1..1000)
    )
  end
  
  def index 
  end

  def team
    @team_number = params[:team_number].to_i
    @team_array = []
    
    @team_number.times do
      new_hero = Hero.new(
        Faker::Superhero.name,
        Faker::Superhero.power,
        Faker::Superhero.descriptor,
        Faker::Superhero.prefix,
        Faker::Superhero.suffix,
        Faker::Avatar.image,
        Faker::Job.field,
        Faker::Name.first_name + ' ' + Faker::Name.last_name,
        Faker::Ancient.hero,
        Faker::Company.bs.titleize,
        rand(1..1000)
      )
      @team_array.push(new_hero)
    end
  end

end

class Hero 
  attr_accessor :name, :power, :description, :prefix, :suffix, :image, :dayjob, :realname, :nemesis, :hobby, :age
  def initialize( name, power, description, prefix, suffix, image, dayjob, realname, nemesis, hobby, age  )
    self.name         = name
    self.power        = power
    self.description  = description
    self.prefix       = prefix
    self.suffix       = suffix
    self.image        = image
    self.dayjob       = dayjob
    self.realname     = realname
    self.nemesis      = nemesis
    self.hobby        = hobby
    self.age          = age
  end
end
