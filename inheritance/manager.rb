require_relative "employee"

class Manager < Employee
    attr_accessor :employees

    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    def bonus(multiplier=1)
      sum = 0
      @employees.each do |employee|
        sum += employee.salary
      end
      bonus = sum * multiplier
    end




end
