# Write your code here!
require 'pry'

def game_hash
    game = {
        :home =>{
            :team_name => "Brooklyn Nets",
            :colors => ["Black","White"] ,
            :players =>
            {
                "Alan Anderson" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks =>1
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
                "Brook Lopez"=> {
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists =>10,
                    :steals =>3,
                    :blocks =>1,
                    :slam_dunks =>15
                },
                "Mason Plumless" => {
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
                    :shoe =>15,
                    :points => 19,
                    :rebounds =>2,
                    :assists =>2,
                    :steals =>4,
                    :blocks => 11,
                    :slam_dunks =>1
                }
            }
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors =>["Turquoise","Purple"] ,
            :players => {
                "Jeff Adrien" => {
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists =>1,
                    :steals => 2,
                    :blocks =>7,
                    :slam_dunks =>2
                },
                "Bismak Biyombo" => {
                    :number => 0,
                    :shoe =>16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7,
                    :blocks => 15,
                    :slam_dunks =>10
                },
                "DeSagna Diop" => {
                    :number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4,
                    :blocks =>5,
                    :slam_dunks =>5
                },
                "Ben Gordon" => {
                    :number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds =>3,
                    :assists =>2,
                    :steals =>1,
                    :blocks => 1,
                    :slam_dunks =>0
                },
                "Brendan Haywood" =>{
                    :number =>33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists =>12,
                    :steals =>22,
                    :blocks =>5,
                    :slam_dunks =>12
                }
            }
        }
    }
 
end





def num_points_scored(player_name)

    game_hash.each do |location, team_data|


        team_data[:players].each do |name, data|

            if name == player_name
             return  data[:points]

            end
        end
    end

end



def shoe_size(player_name)

    game_hash.each do |location, team_data|


        team_data[:players].each do |name, data|
           
            if name == player_name
                
              return data[:shoe]
            
              
            end
        end
    end


   

end






def team_colors(team_name)
colors = []
    game_hash.collect do |location, team_data|
        
        
        if team_data[:team_name] == team_name
            
            colors << team_data[:colors]
             
         end
        
    end
   
   colors.flatten

end

#team_colors("Brooklyn Nets")



def team_names

    game_hash.collect do |location, team_data|

        team_data[:team_name]
        
    end
    
   
end





def player_numbers(team_name)
    playing = []
    game_hash.each do |location, team_data|
        if team_data[:team_name] == team_name
            team_data[:players].collect do |names, data|
            playing << data[:number]
            
            end
        end
    end
    playing
end




def player_stats(player_name)
    player_stats = {}
    
    game_hash.each do |location, team_data|
     
     team_data[:players].each do |name, stats|
         
         if name == player_name
            
            player_stats = stats
        
            
         end
     end
    end
     player_stats
 
end

#player_stats("Mason Plumlee")


def big_shoe_rebounds
num_rebounds =0
biggest_shoe_size = 0

all_players.each do |player_stats|
     if player_stats[:shoe] > biggest_shoe_size
         biggest_shoe_size = player_stats[:shoe]
         num_rebounds = player_stats[:rebounds]
        end
     
    end

num_rebounds
end



def all_players
player_stats = []
    game_hash.each do |location,team_data|
        team_data[:players].each do |name, stats|
        
            player_stats << stats
        end
    end
    player_stats
    
end


