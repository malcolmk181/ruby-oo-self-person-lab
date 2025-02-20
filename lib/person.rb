# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(level)
        if level < 0
            @happiness = 0
        elsif level > 10
            @happiness = 10
        else
            @happiness = level
        end
    end

    def hygiene=(level)
        if level < 0
            @hygiene = 0
        elsif level > 10
            @hygiene = 10
        else
            @hygiene = level
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene += -3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness += -2
            person.happiness += -2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end