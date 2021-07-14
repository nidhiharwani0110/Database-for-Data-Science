CREATE OR ALTER PROCEDURE toJSON
AS
BEGIN
    select Season,
           RegionW,
           RegionX,
           RegionY,
           RegionZ,
           DayZero,
           DayNum         as "Day.DayNum",
           WLoc           as "Day.WLoc",
           NumOT          as "Day.NumOT",
           WTeamID        as 'Day.WinTeam.ID',
           WTeamName      as "Day.WinTeam.TeamName",
           WScore         as 'Day.WinTeam.Score',
           WFirstD1Season as 'Day.WinTeam.FirstD1Season',
           WLastD1Season  as 'Day.WinTeam.LastD1Season',
           WCoachName     as 'Day.WinTeam.Coach.Name',
           WFirstDayNum   as 'Day.WinTeam.Coach.FirstDayNum',
           WLastDayNum    as 'Day.WinTeam.Coach.LastDayNum',

           LTeamID        as 'Day.LoseTeam.ID',
           LTeamName      as "Day.LoseTeam.TeamName",
           LScore         as 'Day.LoseTeam.Score',
           LFirstD1Season as 'Day.LoseTeam.FirstD1Season',
           LLastD1Season  as 'Day.LoseTeam.LastD1Season',
           LCoachName     as 'Day.LoseTeam.Coach.Name',
           LFirstDayNum   as 'Day.LoseTeam.Coach.FirstDayNum',
           LLastDayNum    as 'Day.LoseTeam.Coach.LastDayNum'
    from Fact_Table_Tourney_Compact for JSON PATH
END

Exec toJSON