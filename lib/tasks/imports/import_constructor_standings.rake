require "roo"

namespace :import do
  task constructor_standings: :environment do
    hash = lambda do |row_data|
      {
        constructor_standings_id: row_data.to_a[0][1],
        race_id: row_data["raceId"],
        constructor_id: row_data["constructorId"],
        points: row_data["points"],
        position: row_data["position"],
        position_text: row_data["positionText"],
        wins: row_data["wins"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/constructor_standings.csv", hash, ConstructorStanding)
  end
end
