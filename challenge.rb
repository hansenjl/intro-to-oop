require 'pry'
# Build your own person class
# A person should have a name, a hobby, and a hometown
# The hometown will not be changeable
# Create an instance method called #greeting that will introduce a person and print out both the name and hometown
# Create a class method to keep track of all of the people
# Create a class method to find all of the people from a certain hometown

class Person
    @@all = []
    #macros - a line of code that writes more code for us
    attr_accessor :age, :homewtown, :name, :nickname  # writes 2 methods: age=   age
    attr_writer :password    #password=    variables we don't want read
    attr_reader :birth_date  #birth_date   variables we don't want to be able to change

    def self.all   #class method
        @@all #class variables
    end

    def save
        #add the object this method was called upon to @@all
        @@all << self   #self represents the object the method was called upon
    end

    def hello  #instance method
        puts "hi, my name is #{@name}"
    end

    def name=(new_name)  #instance method   #Setter/writer
       @name = new_name
    end

    def name #return the value of our instance variable @name  |  getter/reader method
        @name
    end
end

x = Person.new
x.name = "Bob"    #x.name=("Bob")
x.save
x.hello
sally = Person.new
sally.save
sally.hello
sally.age = 30
x.age = 20
binding.pry
puts "Bob's age is #{x.age}"
puts "Sally's age is #{sally.age}"



