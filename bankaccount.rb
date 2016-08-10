class BankAccount
	@accnumber
	@checkingbal
	@savingsbal
	@interestrate
	@@numaccounts = 0

	attr_reader :accnumber, :checkingbal, :savingsbal

	def initialize
		#create acc number
		@accnumber = rand(0..100)
		@interestrate = 1.25
		@checkingbal = 0
		@savingsbal = 0
		@@numaccounts += 1
	end

	def deposit_checking amt
		@checkingbal += amt
		self
	end

	def deposit_savings amt
		@savingsbal += amt
		self
	end

	def withdraw_checking amt
		if amt > @checkingbal
			puts 'Insufficient funds'
			return self
		end
		@checkingbal -= amt
		self
	end

	def withdraw_savings amt
		if amt > @savingsbal
			puts 'Insufficient funds'
			return self
		end
		@savingsbal -= amt
		self
	end

	def display_total
		puts @checkingbal + @savingsbal
		self
	end

	def account_information
		puts "Account number: #{@accnumber}"
		puts "Total money: #{@checkingbal + @savingsbal}"
		puts "Checking account balance: #{@checkingbal}"
		puts "Savings account balance: #{@savingsbal}"
		puts "Interest rate: #{@interestrate}"
		self
	end
end

# BankAccount.new.account_information.deposit_savings(50).deposit_checking(50).account_information.withdraw_savings(20).withdraw_checking(20).account_information

















