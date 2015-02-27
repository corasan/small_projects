class Account

    attr_reader :name, :id, :pin, :balance

    def initialize
        print "Enter your first name: "
        @name = gets.chomp
        print "Enter your 4 digit PIN: "
        @pin = gets.chomp.to_i
        @balance = 0
        puts "New account created! #{@name} your balance is $#{@balance}."
    end

    def deposit
        print "Deposit: $"
        @balance += gets.chomp.to_i
        print "Your new balance is $#{@balance}"
    end

    def withdraw
        print "Withdraw: $"
        @balance -= gets.chomp.to_i
        print "Your new balance is $#{@balance}"
    end

    def access_acc
        puts "Access your account."
        print "Name: "
        acc_name = gets.chomp
        print "PIN: "
        acc_pin = gets.chomp.to_i

        if acc_name == @name && acc_pin == @pin
            puts "1) Deposit\n2) Withdraw"
            option = gets.chomp.to_i

            if option == 1
                self.deposit
            elsif option == 2
                self.withdraw
            else
                puts "Error! Invalid option."
            end
        elsif
            puts "nothing happened"
        end
    end
end

henry = Account.new
henry.access_acc
