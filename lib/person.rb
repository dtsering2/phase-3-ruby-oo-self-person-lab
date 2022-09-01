class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = if happiness >10
                        10
                    elsif happiness <0
                        0
                    else 
                        happiness
                    end
    end

    def hygiene=(hygiene)
        @hygiene = if hygiene >10
                        10
                    elsif hygiene <0
                        0
                    else 
                        hygiene
                    end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amt)
        @bank_account += amt
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"        
    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        [self, friend].map {|element| element.happiness += 3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        case topic
            when "politics"
                [self, friend].map {|element| element.happiness -= 2}
                'blah blah partisan blah lobbyist'
            when "weather"
                [self, friend].map {|element| element.happiness += 1}
                'blah blah sun blah rain'
            else
                'blah blah blah blah blah'
        end
    end

end