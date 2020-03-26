## Bank Tech Test

### Overview

A program ran in terminal which can be run in a ruby REPL such as irb in terminal. Users can display their transaction history after making deposits or withdrawals from their accounts.

### Installation
Clone the repository and install the gems as follows:

git clone\
bundle install


### Testing

The testing framework used in this project is rspec, the linter is rubocop and the test coverage is simplecov.


## Approach

I decided to have three classes, an Account class to handle the balance, deposits and withdrawals. A Statement class to print the statement and a Transaction class to store the transaction history. 

I used TDD to ensure my code does what I think it does. 

## Output statement example:

date || credit || debit || balance\
14/01/2012 || || 500.00 || 2500.00\
13/01/2012 || 2000.00 || || 3000.00\
10/01/2012 || 1000.00 || || 1000.00

## User Stories

As a user,\
so that I can buy tea\
I would like to withdraw money from my account

As a user,\
so that I can save money for tea\
I would like to deposit money into my account

As a user,\
so that I can see how much tea I can buy\
I would like to see how much balance I have in my account

As a user,\
so that I can see how much tea Ive bought\
I would like to see my most recent transactions


## Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)\
Deposits, withdrawal.\
Account statement (date, amount, balance) printing.\
Data can be kept in memory (it doesn't need to be stored to a database or anything).

## irb 

2.6.3 :001 > require "./lib/account.rb"\
 => true\
2.6.3 :002 > require "./lib/statement.rb"\
 => true\
2.6.3 :003 > require "./lib/transaction.rb"\
 => true\
2.6.3 :004 > account = Account.new\
 => #<Account:0x00007f86990a3288 @balance=0, @transaction=#<Transaction:example @transaction_history=[]>> 
2.6.3 :005 > account.add(10)\
 => 10\
2.6.3 :006 >


## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012\
And a deposit of 2000 on 13-01-2012\
And a withdrawal of 500 on 14-01-2012\
When she prints her bank statement\
Then she would see


date || credit || debit || balance\
14/01/2012 || || 500.00 || 2500.00\
13/01/2012 || 2000.00 || || 3000.00\
10/01/2012 || 1000.00 || || 1000.00
