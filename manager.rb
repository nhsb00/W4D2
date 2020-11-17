
require_relative "employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss, employees = [])
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multiplier)
        # bonus = (total salary of all sub-employees) * multiplier
        sum_salary * multiplier
    end

    def sum_salary 
        salaries = 0
        self.employees.each do |emp|
            if emp.is_a?(Manager)
                salaries = salaries + emp.sum_salary + emp.salary
            else
                salaries = salaries + emp.salary
            end
        end
        salaries
    end
end