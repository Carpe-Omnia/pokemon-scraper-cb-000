class Pokemon
  attr_accessor :id, :name, :type

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
  end
  def self.save(name:, type:, db:)
    db.execute("
    INSERT INTO pokemon (id, name, type)
    VALUES (#{id}, #{name}, #{type})
    ")
  end
end
