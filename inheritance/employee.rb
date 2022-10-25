class Employee

    attr_accessor :salary

    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
        unless @boss.nil?
            @boss.employees << self
        end
    end

    def bonus(multiplier=0)
        bonus = self.salary * multiplier
    end




end
