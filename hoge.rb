class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    "hello, I #{@name}"
  end
end

names = ['orekun', 'watasu', 'ossan']
users = User.create_users(names)

users.each do |user|
  puts user.hello
end

alice = User.new('Alice')
puts alice.hello
