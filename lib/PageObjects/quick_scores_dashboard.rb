require 'page-object'

class QuickScoresDashboard
    include PageObject

    div(:upcoming_game_div, :class => 'RowBox row1', :index => 0)
        span(:date_of_next_game, :class => 'tCell align-left')
        div(:time_of_next_game, :class => 'tCell col-4')
        link(:home_team, :title => 'View Team Schedule', :index => 0)
        link(:away_team, :title => 'View Team Schedule', :index => 1)
        # div(:away_team)
        # div(:home_team)
    def retrieve_upcoming_game_info
       
       puts self.date_of_next_game.strip
       puts self.time_of_next_game.match(/\d:\d{2} PM/).to_s
       puts self.home_team_element.text
       puts self.away_team_element.text

    end

end