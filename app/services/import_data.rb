require "roo"

class ImportData
  def import_data(file_name, mapping_function, model)
    csv = Roo::Spreadsheet.open(file_name)
    (2..csv.last_row).each do |i|
      row_data = csv.row(1).zip(csv.row(i)).to_h
      table_columns = mapping_function.call(row_data)
      insert_row(table_columns, model)
    end
  end
  def insert_row(table_columns, model)
    record = model.new(table_columns)
    begin
      record.save!
    rescue ActiveRecord::RecordInvalid => e
      puts "Error saving Reader: #{e.record.errors.full_messages.join(', ')}"
    end
  end
end
