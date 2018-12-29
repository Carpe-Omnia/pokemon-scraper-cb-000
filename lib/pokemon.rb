class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  def self.save(name, type, db)
    #command = "INSERT INTO pokemon (name, type) VALUES (#{name}, #{type})"
    #db.execute(command)
    db.execute("INSERT INTO pokemon (name, type)
     VALUES ('#{name}', '#{type}');")
  end
  def self.find(id, db)
    command = "SELECT * FROM pokemon WHERE id = '#{id}';"
    dude = db.execute(command)
    bro = self.new(id: dude[0], name: dude[1], type: dude[2], db: db)
    bro
  end
end
