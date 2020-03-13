class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize(keywords)
    
  end
  
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  
  def self.find(id, db) 
    bob = db.execute("SELECT * FROM pokemon WHERE id=?", id)
    new_pokemon = self.new(bob) 
    new_pokemon.id = row[0]
    new_pokemon.name = row[1]
    new_pokemon.type = row[2]
    new_pokemon
  end
    
  
end
