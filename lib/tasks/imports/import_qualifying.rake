namespace :import do
  task qualifying: :environment do
    hash = lambda do |row_data|
      {
        qualify_id: row_data.to_a[0][1],
        race_id: row_data["raceId"],
        driver_id: row_data["driverId"],
        constructor_id: row_data["constructorId"],
        number: row_data["number"],
        position: row_data["position"],
        q1: row_data["q1"],
        q2: row_data["q2"],
        q3: row_data["q3"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/qualifying.csv", hash, Qualification)
  end
end
