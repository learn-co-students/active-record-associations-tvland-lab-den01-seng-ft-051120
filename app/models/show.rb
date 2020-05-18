class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

    def actors_list
        # Character.all[0].show.actors[0].full_name you're getting this (looks like you need a helper function!)
        #characters_list.map { |character| character.actor.full_name }
        Character.all.map { |character| character.actor.full_name }
    end

    def characters_list
        Character.all.map {|character| character}
    end
end