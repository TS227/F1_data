namespace :import do
  task lap_times: :environment do
    hash = lambda do |row_data|
      {
        race_id: row_data.to_a[0][1],
        driver_id: row_data["driverId"],
        lap: row_data["lap"],
        position: row_data["position"],
        time: row_data["time"],
        milliseconds: row_data["milliseconds"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/lap_times.csv", hash, LapTime)
  end
end
