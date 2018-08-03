# Write your code here!"
require "pry"
def game_hash
 hash = {
  :home => {
    :team_name => "Brooklyn Nets", 
    :colors => "Black, White",
    :players => {
      "Alan Anderson" => {
        :number => 0, 
        :shoe => 16, 
        :points => 22, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1
      },

     "Reggie Evans" => {
       :number => 30, 
       :shoe => 14, 
       :points => 12, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 12, 
       :blocks => 12, 
       :slam_dunks => 7
     },

     "Brook Lopez" => {
       :number => 11, 
       :shoe => 17, 
       :points => 17, 
       :rebounds => 19, 
       :assists => 10, 
       :steals => 3, 
       :blocks => 1, 
       :slam_dunks => 15
     },

     "Mason Plumlee" => {
       :number => 1, 
       :shoe => 19, 
       :points => 26, 
       :rebounds => 12, 
       :assists => 6, 
       :steals => 3, 
       :blocks => 8, 
       :slam_dunks => 5
     },

     "Jason Terry" => {
       :number => 31, 
       :shoe => 15, 
       :points => 19, 
       :rebounds => 2, 
       :assists => 2, 
       :steals => 4, 
       :blocks => 11, 
       :slam_dunks => 1
     }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets", 
    :colors => "Turquoise, Purple",
    :players => {
      "Jeff Adrien" => {
        :number => 4, 
        :shoe => 18, 
        :points => 10, 
        :rebounds => 1, 
        :assists => 1, 
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2
      },

     "Bismak Biyombo" => {
       :number => 0, 
       :shoe => 16, 
       :points => 12, 
       :rebounds => 4, 
       :assists => 7, 
       :steals => 7, 
       :blocks => 15, 
       :slam_dunks => 10
      },

     "DeSagna Diop" => {
       :number => 2, 
       :shoe => 14, 
       :points => 24, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 4, 
       :blocks => 5, 
       :slam_dunks => 5
      },

     "Ben Gordon" => {
       :number => 8, 
       :shoe => 15, 
       :points => 33, 
       :rebounds => 3, 
       :assists => 2, 
       :steals => 1, 
       :blocks => 1, 
       :slam_dunks => 0
      },

     "Brendan Haywood" => {
       :number => 33, 
       :shoe => 15, 
       :points => 6, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 22, 
       :blocks => 5, 
       :slam_dunks => 12
      }
    }
  }
}
 hash
end

def num_points_scored(name)
 arr = []
  game_hash.each do |location, contituents|
    contituents.each do |key, value|
      if key == :players
       value.each do |key, value|
        if key == name
        arr << value[:points]
        end
       end
      end
    end
  end
  arr.first
end

def shoe_size(name) 
  arr = []
  game_hash.each do |location, contituents|
    contituents.each do |key, value|
      if key == :players
       value.each do |key, value|
        if key == name
        arr << value[:shoe]
        end
       end
      end
    end
  end
  arr.first
end

def team_colors(team)
  arr = []
  game_hash.each do |key, value|
    if value[:team_name] == team
    arr <<value[:colors]
    end
    end
  arr.join("").gsub(",","").split(" ")
end

def team_names
  arr = []
  game_hash.each do |key, value|
   arr << value[:team_name]
  end
  arr
end

def player_numbers(team)
  arr = [] 
  game_hash.each do |location, contituents|
    if contituents[:team_name] == team
      contituents.each do |key, value|
      if value.class == Hash
        value.each do |member, member_profile|
        arr << member_profile[:number]
        end
      end
    end
    end
  end
  arr
end


def player_stats(name)
  arr = []
  game_hash.each do |location, contituents|
    contituents.each do |key, value|
      if key == :players
       value.each do |key, value|
        if key == name
        arr << value
        end
       end
      end
    end
  end
  arr.first
end

def big_shoe_rebounds
  biggest = 0
  rebounds = []
    game_hash.each do |location, contituents|
      contituents.each do |key, value|
        if key == :players
          value.each do |key, value|
            if value[:shoe] > biggest
              biggest = value[:shoe]
              rebounds << value[:rebounds]
            end
          end
        end
      end
    end
  rebounds.first
end



