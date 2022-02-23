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

in irb
```
require './lib/account'
```
