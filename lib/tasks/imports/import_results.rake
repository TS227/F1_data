namespace :import do
  task results: :environment do
    hash = lambda do |row_data|
      {
        result_id: row_data.to_a[0][1],
        race_id: row_data["raceId"],
        driver_id: row_data["driverId"],
        constructor_id: row_data["constructorId"],
        number: row_data["number"],
        grid: row_data["grid"],
        position: row_data["position"],
        position_text: row_data["positionText"],
        position_order: row_data["positionOrder"],
        points: row_data["points"],
        laps: row_data["laps"],
        time: row_data["time"],
        milliseconds: row_data["milliseconds"],
        fastest_lap: row_data["fastestLap"],
        rank: row_data["rank"],
        fastest_lap_time: row_data["fastestLapTime"],
        fastest_lap_speed: row_data["fastestLapSpeed"],
        status_id: row_data["statusId"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/results.csv", hash, Result)
  end
end
x
