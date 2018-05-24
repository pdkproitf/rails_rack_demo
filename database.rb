class Database
  USERS = {
    1 => {name: "Jaction", age: 18, bike: 'Cannondale'},
    2 => {name: "Coraline", age: 21, bike: 'trek'}
  }

  RISES = {
    1 => {user_id: 1, title: "Autralia", time: '24-05-208'},
    2 => {user_id: 2, title: "Los Angeles", time: '25-05-208'}
  }

  def self.users
    USERS
  end

  def self.rises
    RISES
  end
end
