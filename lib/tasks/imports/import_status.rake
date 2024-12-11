namespace :import do
  task status: :environment do
    hash = lambda do |row_data|
      {
        status_id: row_data.to_a[0][1],
        status: row_data["status"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/status.csv", hash, Status)
  end
end
