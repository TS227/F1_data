require "roo"

namespace :import do
  task races: :environment do
    hash = lambda do |row_data|
      {
        race_id: row_data.to_a[0][1],
        year: row_data["year"],
        round: row_data["round"],
        circuit_id: row_data["circuitId"],
        name: row_data["name"],
        date: row_data["date"],
        time: row_data["time"],
        url: row_data["url"],
        fp1_date: row_data["fp1_date"],
        fp1_time: row_data["fp1_time"],
        fp2_date: row_data["fp2_date"],
        fp2_time: row_data["fp2_time"],
        fp3_date: row_data["fp3_date"],
        fp3_time: row_data["fp3_time"],
        quali_date: row_data["quali_date"],
        quali_time: row_data["quali_time"],
        sprint_date: row_data["sprint_date"],
        sprint_time: row_data["sprint_time"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/races.csv", hash, Race)
  end
end
