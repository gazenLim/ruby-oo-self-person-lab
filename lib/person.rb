require 'pry'

class Person

attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account

def initialize(name)
  @name = name
  @happiness = 8
  @hygiene = 8
  @bank_account = 25
end

def happiness=(point) 
  @happiness = point
  if @happiness > 10 
     @happiness = 10 
  elsif @happiness < 0 
     @happiness = 0 
  end 
end

def hygiene=(point)
  @hygiene=point
  if @hygiene>10
    @hygiene=10
  elsif @hygiene<0
    @hygiene=0
  end
end

def happy?
if @happiness>7 
  return true
else
  false
end
end

def clean?
if hygiene>7
  return true
else false
end
end


def get_paid(get_paid)
  @bank_account+=get_paid
  return "all about the benjamins"
end

def take_bath
  @hygiene+= 4
  self.hygiene= @hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def hygiene
  self.hygiene= @hygiene
end

def work_out
  self.happiness= @happiness + 2
  self.hygiene= @hygiene - 3
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness= @happiness + 3
    friend.happiness= friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness= @happiness - 2
    friend.happiness= friend.happiness - 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness= @happiness + 1
    friend.happiness= friend.happiness + 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end
end


