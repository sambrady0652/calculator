# Calculator

Supply an operator-separated string of numbers you would like to have calculated
Note: please supply only one operator, but feel free to supply as many numbers as you'd like

## Setup

Once you have opened the directory, run the following commands in your terminal:

1.  `bin/setup`
2.  `rails server`

Once the server is running, navigate to `localhost:3000` in your web browser and enter the values you'd like to calculate.

To run the unit tests, copy this command into your terminal window:

`bundle exec rspec spec/unit/lib/calculation_runner_spec.rb`

NOTE: This application was built using Ruby 2.6.6 and postgresql