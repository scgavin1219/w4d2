class Employee

    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
        unless @boss.nil? 
            @boss.employees << self
        end
    end




end