namespace :import_csv do
  desc "Student情報を入力する"

  task students: :environment do
    Student.import("db/csv_data/student_data.csv")
  end
end
