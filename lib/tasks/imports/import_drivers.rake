namespace :import do
  task drivers: :environment do
    hash = lambda do |row_data|
      {
        driver_id: row_data.to_a[0][1],
        driver_ref: row_data["driverRef"],
        number: row_data["number"],
        code: row_data["code"],
        forename: row_data["forename"],
        surname: row_data["surname"],
        dob: row_data["dob"],
        nationality: row_data["nationality"],
        url: row_data["url"]
      }
    end
    ImportData.new.import_data("lib/tasks/CSVs/drivers.csv", hash, Drivers)
  end
end
