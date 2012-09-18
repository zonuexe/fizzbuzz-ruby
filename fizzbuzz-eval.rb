#!/usr/bin/env ruby

module FizzBuzz
  module Eval
    TEMPLATE = "puts '%s'\n"
    def self.fizzbuzz(n)
      eval (1..n).map{ |m| 
        s = if m % 15 == 0
              "FizzBuzz"
            elsif m % 3 == 0
              "Fizz"
            elsif m % 5 == 0
              "Buzz"
            else
              m.to_s
            end
        TEMPLATE % s
      }.join
    end
  end
end

puts FizzBuzz::Eval::fizzbuzz 100
