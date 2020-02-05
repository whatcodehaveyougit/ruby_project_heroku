# require('pg')
#
# class SqlRunner
#
#   def self.run(sql, values = [])
#     begin
#       db = PG.connect({dbname: 'edinburghsound', host: 'localhost'})
#       db.prepare("query", sql)
#       result = db.exec_prepared("query", values)
#     ensure
#       db.close() if db != nil
#     end
#     return result
#   end
#
# end


require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: 'd9av40sf2f4tda', host: 'ec2-18-213-176-229.compute-1.amazonaws.com'
        port: 5432, user: 'remuopitowjoqw', password: '40fc6558b52d4de1f955415ab2df3ab06bd44456bde80167f3c8da2d3c03135b'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
