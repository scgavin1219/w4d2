require_relative "employee"

class Manager < Employee
    attr_accessor :employees
    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    



end