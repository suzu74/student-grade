class Student < ApplicationRecord
  validates :name, presence: true
  validates :grade, presence: true
  validates :comment, presence: true

  def self.import(path)
    list = []

    CSV.foreach(path, headers: true) do |row|
      list <<  {
        name: row["name"],
        grade: row["grade"],
        comment: row["commen"]
      }
    end
      puts "improt 開始"
      Student.create!(list)
      puts "import終わり"

      rescue => e
        puts "#{e.class}: #{e.message}"
        puts "-------------------------"
        puts e.backtrace # 例外が発生した位置情報
        puts "-------------------------"
        puts "インポートに失敗"
  end
end
