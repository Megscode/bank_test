## Requirements:

Should be able to interact with the code via a REPL like IRB. (Don't need to implement a command line interface that takes input from STDIN).
Should have deposits and withdrawals.
Should have account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database).

Acceptance Criteria:

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00


### User Stories

as a user 


## Installation Instructions

### Prerequisite setup:

Clone this repo to your local machine and cd into it
Run the command gem install bundle (if you don't have bundler already) and then bundle install
Running the app
Launch IRB with the command irb

### Testing

Tests can be run using Rspec. Run the command rspec