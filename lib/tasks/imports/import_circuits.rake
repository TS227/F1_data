require "roo"

namespace :import do
  task circuits: :environment do
    hash = lambda do |row_data|
      {
        driver_standings_id: row_data.to_a[0][1],
        circuit_ref: row_data["circuitRef"],
        name: row_data["name"],
        location: row_data["location"],
        country: row_data["country"],
        lat: row_data["lat"],
        lng: row_data["lng"],
        alt: row_data["alt"],
        url: row_data["url"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/driver_standings.csv", hash, DriverStanding)
  end
end
