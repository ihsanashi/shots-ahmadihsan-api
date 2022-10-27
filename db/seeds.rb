connection = ActiveRecord::Base.connection

sql = File.read('db/ig_backup_seed.sql')
statements = sql.split(/;$/)
statements.pop

ActiveRecord::Base.transaction do
  statements.each do |statement|
    connection.execute(statement)
  end
end
