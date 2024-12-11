namespace :import do
  task pit_stops: :environment do
    hash = lambda do |row_data|
      {
        race_id: row_data.to_a[0][1],
        driver_id: row_data["driverId"],
        lap: row_data["lap"],
        stop: row_data["stop"],
        time: row_data["time"],
        duration: row_data["duration"],
        milliseconds: row_data["milliseconds"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/pit_stops.csv", hash, PitStop)
  end
end
