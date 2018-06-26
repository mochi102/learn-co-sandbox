  def userquestion
    puts "What is your username?"
    answer = gets.chomp
  end

  def passquestion
    puts "What is your password?"
    answer = gets.chomp
  end
  
  def friendques
    puts "Who are your friends?"
    answer = gets.chomp
  end
    
  def storyques
    puts "What do you want to caption your story?"
    answer = gets.chomp
  end

class User
  attr_accessor :friend, :username, :password, :story
  
  @@streaks = 0
  @@friend = []
  @@story = []
  
  def initialize(username, password, friend, story)
    @username = username
    @password = password
    @@streaks += 1
    @@friend << friend
    @@story << story
    @answer = gets.chomp
  end
  
  def self.count
    @@streaks
  end
  
  def self.friend_list
    @@friend
  end
  
  def self.story
    @@story
  end
end 

# puts userquestion
# puts passquestion
# puts friendques
# puts storyques

user_one = User.new("mochi102", "rosie", "Rosie", "Hey Everyone!")
puts user_one.userquestion
puts user_one.passquestion
puts user_one.friendques
puts user_one.storyques
puts user_one.username
puts user_one.password
# puts User.friend_list
# puts User.count
# puts User.story

