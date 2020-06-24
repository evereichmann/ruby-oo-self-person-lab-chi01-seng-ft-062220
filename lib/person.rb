class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8     
    end   
    def happiness=(num)
        @happiness = num
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end    
    end
    def hygiene=(num)
        @hygiene = num
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end
    def happy?
        @happiness > 7    
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account += salary
        if salary >= 100 
            return "all about the benjamins"
        end    
    end   
    def take_bath
        clean = 0
        clean = @hygiene 
        clean += 4
        self.hygiene=(clean)
        return "♪ Rub-a-dub just relaxing in the tub ♫"      
    end
    def work_out
        clean = 0 
        clean = @hygiene - 3
        self.hygiene=(clean)
        feeling = 0
        feeling = @happiness + 2
        self.happiness=(feeling)
        return "♪ another one bites the dust ♫"
    end 
    def call_friend(friend)
        caller = 0
        caller = @happiness + 3
        self.happiness=(caller)
        recerver = friend.happiness + 3
        friend.happiness = recerver
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        people_in_converstation = [self, friend]
        if topic == "politics"
            people_in_converstation.each {|people| people.happiness -= 2}
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            people_in_converstation.each {|people| people.happiness += 1}
            return "blah blah sun blah rain"
        else        
            return "blah blah blah blah blah"
        end
    end           
end


