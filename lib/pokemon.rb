class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize(keywords)
    
  end
  
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  
  def self.find(db, num) 
    bob = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    id = row[0]
    name = row[1]
    type = row[2]
    new_pokemon = self.new(bob) 
    new_pokemon
  end
    
  
end
