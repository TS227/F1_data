namespace :import do
  task driver_standings: :environment do
    hash = lambda do |row_data|
      {
        driver_standings_id: row_data.to_a[0][1],
        race_id: row_data["raceId"],
        driver_id: row_data["driverId"],
        points: row_data["points"],
        position: row_data["position"],
        position_text: row_data["positionText"],
        wins: row_data["wins"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/driver_standings.csv", hash, DriverStanding)
  end
end
