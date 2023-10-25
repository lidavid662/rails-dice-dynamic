class FlexController < ApplicationController
  def home
    render({ :template => "home"})
  end
  def roll
    @ndice=params.fetch("ndice").to_i
    @sides=params.fetch("sides").to_i

    @rolls = []

    @ndice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render({ :template => "result"})
  end
  
end
