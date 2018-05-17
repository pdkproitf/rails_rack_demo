class Database
  USERS = {
    1 => {name: "Jaction", age: 18, bike: 'Cannondale'},
    2 => {name: "Coraline", age: 21, bike: 'trek'}
  }

  def self.users
    USERS
  end
end
