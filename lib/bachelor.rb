require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  the_winner = " "
  data.each do |key, value|
    if key == season
      value.each do |contestant_data|
        contestant_data.each do |key_3, value_3|
              if key_3 == "status"
                if value_3 == "Winner"
                  season_winner = contestant_data.fetch("name")
                  the_winner = season_winner
                end
              end
        end
      end
    end
  end
  the_winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  the_winner = " "
  data.each do |key, value|
    value.each do |contestant_data|
      contestant_data.each do |key_3, value_3|
        if key_3 == "occupation"
          if occupation == value_3
            season_winner = contestant_data.fetch("name")
            the_winner = season_winner
          end
        end
      end
    end
  end
  the_winner
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key, value|
    value.each do |contestant_data|
      contestant_data.each do |key_3, value_3|
        if key_3 == "hometown"
          if hometown == value_3
            counter = counter + 1
          end
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  contest_ages = []
  data.each do |key, value|
    if key == season
      value.each do |contestant_data|
        ages = contestant_data["age"].to_i
        contest_ages << ages
      end
    end
  end

  age_average = ((contest_ages.inject(&:+))/contest_ages.length)
  age_average.round(0)
end
