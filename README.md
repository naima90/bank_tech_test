### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### User Stories

```
As a User
I want to deposit money into my account
So that I can store my money somewhere safe

As a User
I want to withdrawl money from my account
So that I can spend my money

As a User
I want to view my account statement
So that I can see date, amount, and balance
```

### To use this repo:

1. clone this repo

```
git clone <paste url here>
```

2. install the dependencies 

```
bundle install
```

3. Run tests

```
rspec

rubocop
```

4. Run project by launching irb

```
irb
```

### Once in irb 

```
1. require file by running 
require './lib/account'

2. create an instance of account by running 
account = Account.new

3. deposit money by running 
account.deposit(put amount here)

4. check balance by running 
account.balance

5. withdraw money by running
account.withdraw(put amount here)

6. print your statement by running
account.print_statement
```

### Project approach

```
my approch was starting off as simple as possible and following red-green cycle of TDD and sticking to the user stries.

I have started planning the project by hand writting domain model of the classes and their methods as well as user stories.

I started off with writting tests first and doing the minimum to pass them and refactoring after.

I initially started with an account class and I just wanted it to simply do 3 things (1) be able to deposit money into account, (2) be able to withdraw money and (3) be able to print statements.

I also added a second class along the way, which knows what each statement is supposed to conttain ie. date, credit amount, debit amount and total balance after each transaction.
```

