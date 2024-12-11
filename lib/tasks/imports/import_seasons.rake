namespace :import do
  task seasons: :environment do
    hash = lambda do |row_data|
      {
        year: row_data.to_a[0][1],
        url: row_data["url"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/seasons.csv", hash, Season)
  end
end
