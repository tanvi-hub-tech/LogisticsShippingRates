#!/bin/bash

# Simple Interest Calculator Script

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  # Formula: Simple Interest = (Principal * Rate * Time) / 100
  interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
  echo "Simple Interest for Principal = $principal, Rate = $rate%, Time = $time years is: $interest"
}

# Check if user has provided 3 arguments
if [ $# -eq 3 ]; then
  principal=$1
  rate=$2
  time=$3
  calculate_simple_interest $principal $rate $time
else
  echo "Usage: $0 <principal> <rate> <time>"
  echo "Example: $0 10000 5 3"
fi
