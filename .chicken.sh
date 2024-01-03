#!/bin/bash

# Number of iterations
num_iterations=1000

# Player states
player1_swerves=0
player2_swerves=0
both_swerve=0
both_crash=0

# Function to simulate Chicken Game
simulate_chicken_game() {
  local player1_choice=$1
  local player2_choice=$2

  # Determine outcomes based on choices
  if [ "$player1_choice" == "swerve" ] && [ "$player2_choice" == "swerve" ]; then
    ((both_swerve++))
  elif [ "$player1_choice" == "crash" ] && [ "$player2_choice" == "crash" ]; then
    ((both_crash++))
  elif [ "$player1_choice" == "swerve" ]; then
    ((player1_swerves++))
  elif [ "$player2_choice" == "swerve" ]; then
    ((player2_swerves++))
  fi
}

# Run iterations
for ((i = 1; i <= num_iterations; i++)); do
  # Simulate players' choices (swerve or crash)
  player1_choice=$((RANDOM % 2))
  player2_choice=$((RANDOM % 2))

  # Translate numeric choices to swerve or crash
  case $player1_choice in
    0) player1_choice="swerve" ;;
    1) player1_choice="crash" ;;
  esac

  case $player2_choice in
    0) player2_choice="swerve" ;;
    1) player2_choice="crash" ;;
  esac

  # Simulate the Chicken Game
  simulate_chicken_game "$player1_choice" "$player2_choice"
done

# Display summarized results
echo "Simulated $num_iterations rounds of the Chicken Game:"
echo "Player 1 Swerves Count: $player1_swerves"
echo "Player 2 Swerves Count: $player2_swerves"
echo "Both Swerve Count: $both_swerve"
echo "Both Crash Count: $both_crash"
