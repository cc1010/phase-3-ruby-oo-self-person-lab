# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_accessor :hygiene

    def initialize(name, bank_account =25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def bank_account=(value)
       @bank_account = self.bank_account + value
    end

    # def happiness(happiness =8)
    #     @happiness = happiness
    # end
    def happiness=(value)
        if value < 0
            @happiness = 0
        elsif value < 11
            @happiness = value
        else
            @happiness = 10
        end
    end

    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value < 11
            @hygiene = value
        else
            @hygiene = 10
        end
    end

    def happy? 
        if self.happiness > 7
            @happy = true
        else 
            @happy = false
        end    
    end

    def clean? 
        if self.hygiene > 7
            @clean = true
        else 
            @clean = false
        end    
    end
    
    def get_paid(amount)
        @bank_account = self.bank_account + amount
        return 'all about the benjamins'
    end

    def take_bath()
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out()
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness = self.happiness - 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end
stella = Person.new('stella')


# # chaim.bank_account=(100)
# stella.bank_account = 66
# stella.happiness 
#stella.get_paid=33

#p stella.bank_account
# p stella.happiness
# p stella.hygiene
