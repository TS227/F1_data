require "roo"

namespace :import do
  task constructor_results: :environment do
    hash = lambda do |row_data|
      {
        constructor_results_id: row_data.to_a[0][1],
        race_id: row_data["raceId"],
        constructor_id: row_data["constructorId"],
        points: row_data["points"],
        status: row_data["status"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/constructor_results.csv", hash, ConstructorResult)
  end
end
