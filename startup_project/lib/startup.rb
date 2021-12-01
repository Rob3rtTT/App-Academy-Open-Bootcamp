require "employee"

class Startup
    attr_reader(:name, :funding, :salaries, :employees)
    def initialize(name,funding,salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(other_startup)
        self.funding > other_startup.funding
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees = Employee.new(employee_name,title)
        else
            raise "Invalid title!"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        money_owed=@salaries[employee.title]
        if @funding > money_owed
            employee.pay(money_owed)
            @funding-=money_owed
        else
            raise "bankrupt"
        end
    end

    def payday
        @employees.each do |employee|
            self.pay_employee(employee)
        end
    end
    #ceo - 4800
    #cto - 3800
    #pilot - 2500
    def average_salary
        sum=0
        @employees.each do |employee|
        sum+=@salaries[employee.title]
        end
        sum/@employees.length.to_f
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(other_startup)
        @funding += other_startup.funding 
        @salaries = other_startup.salaries.merge(@salaries)
        @employees += other_startup.employees
        other_startup.close
    end
end
