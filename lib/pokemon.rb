class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize(keywords)
    
  end
  
  def self.save 
    sql = <<-SQL 
      INSERT INTO students (name, type)
      VALUES (?,?)
    SQL
    
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
  
end
