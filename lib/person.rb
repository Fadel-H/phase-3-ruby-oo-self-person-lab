class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account= balance
        @bank_account = balance
    end

    def happiness= happy 
       
        if happy > 10
            self.happiness = 10
        elsif happy < 0
            self.happiness = 0
        else
            @happiness = happy
    end
end

    def hygiene= value
        if value > 10
            self.hygiene = 10
        elsif value <0
            self.hygiene =0
        else
            @hygiene = value
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene>7
    end

    def get_paid amount
        @bank_account = bank_account + amount
        return "all about the benjamins"
    end

    def take_bath 
       self.hygiene= @hygiene + 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= @hygiene - 3
        self.happiness= @happiness+2
        return "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        return  "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person, topic
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2 
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1 
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
