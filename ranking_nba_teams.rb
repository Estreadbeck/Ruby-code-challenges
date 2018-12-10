@teams = "Los Angeles Clippers,Dallas Mavericks,New York Knicks,NYK,Atlanta Hawks,Indiana Pacers,Memphis Grizzlies,"\
         "Los Angeles Lakers,Minnesota Timberwolves,Phoenix Suns,Portland Trail Blazers,New Orleans Pelicans,"\
         "Sacramento Kings,Los Angeles Clippers,Houston Rockets,Denver Nuggets,Cleveland Cavaliers,Milwaukee Bucks,"\
         "Oklahoma City Thunder,San Antonio Spurs,Boston Celtics,Philadelphia 76ers,Brooklyn Nets,Chicago Bulls,"\
         "Detroit Pistons,Utah Jazz,Miami Heat,Charlotte Hornets,Toronto Raptors,Orlando Magic,Washington Wizards,"\
         "Golden State Warriors,Dallas Maver"

def float_checker num
  float_num = num.to_f
  float_num > num.to_i.to_f ? (return true) : (return false)
end

def nba_cup(r, to_find)
  @teams = @teams
    teams_arr = @teams.split(",")
    results_arr = r.split(",").keep_if {|x| x.include?(to_find)}
    wins, draws, losses, scored, conceded, points = 0, 0, 0, 0, 0, 0

      return "" if to_find == ""
      results_arr.map do |x|
        split_p = x.index(/[0-9] /)
        team1 = x.slice(0..split_p)
        team2 =  x.slice((split_p+2)..-1)
        team1.include?(to_find) ? (main_team, other_team = team1, team2) : (main_team, other_team = team2, team1)
        return "#{to_find}:This team didn't play!" if main_team.split(" ")[0..-2].join(" ").length != to_find.length
        main_team_score = main_team.split(" ").last
        main_team.chop!
        other_team_score = other_team.split(" ").last
        other_team.chop!
        if float_checker(main_team_score) == true || float_checker(other_team_score) == true
            return "Error(float number):#{x}"
        else
          main_team_score_int = main_team_score.to_i
          other_team_score_int = other_team_score.to_i
            scored += main_team_score_int
            conceded += other_team_score_int
            if main_team_score_int > other_team_score_int
                wins += 1
                points += 3
            elsif other_team_score_int > main_team_score_int
                losses += 1
            elsif main_team_score_int == other_team_score_int
                draws += 1
                points += 1
            end
        end
      end
 return "#{to_find}:W=#{wins};D=#{draws};L=#{losses};Scored=#{scored};Conceded=#{conceded};Points=#{points}"

end