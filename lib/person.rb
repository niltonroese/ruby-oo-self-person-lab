# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def  happiness=(num)
        # @happiness = num
        # @happiness = 10 if @happiness > 10
        # @happiness = 0 if @happiness < 0
    if num > 10
        @happiness = 10
    elsif num < 0
        @happiness = 0
    else 
        @happiness = num
    end

    def  hygiene=(num)
        @hygiene = num
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def  clean?
        hygiene > 7 ? true : false
    end

    def  happy?
        happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # @hygiene += 4
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # [friend, self].each{|obj| obj.happines +=3}
        friend.happiness +=3
        self.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
        
    def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
        objects.each {|o| o.happiness -=2}
        first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
        objects.each {|o| o.happiness +=1}
        first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
    end
end
end