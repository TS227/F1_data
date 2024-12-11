require "roo"

namespace :import do
  task constructors: :environment do
    hash = lambda do |row_data|
      {
        constructor_id: row_data.to_a[0][1],
        constructor_ref: row_data["constructorRef"],
        name: row_data["name"],
        nationality: row_data["nationality"],
        url: row_data["url"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/constructors.csv", hash, Constructor)
  end
end
