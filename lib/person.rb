# your code goes here
class Person
    attr_reader :name , :bank_account , :happiness , :hygiene
    attr_accessor :bank_account 
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene= value
        @hygiene = value
        @hygiene = 10 unless @hygiene <10   #if hygiene is greater than 10
        @hygiene =0 unless @hygiene >0        #if hygiene is less than zero
    end

    def happiness=(value)
        @happiness = value
        # if happiness is greater than 10
        @happiness = 10 unless @happiness < 10
        # if happiness is less than zero
        @happiness = 0 unless @happiness > 0
    end
    def clean
        @hygiene > 7
    end
    def take_bath
        self.hygiene = @hygiene + 4
        hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def work_out
        self.happiness = @happiness += 2
        self.hygiene = @hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        
    end
end
 joy = Person.new("joy")
joy.happiness=8
joy.happiness=4
puts joy.happiness
puts joy.hygiene
# joy.hygiene=20
puts joy.hygiene

puts joy.clean

p ann = Person.new("ann")
# ann.start_conversation(steve, 'politics')
# p ann.start_conversation(steve, 'politics')




