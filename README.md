# Car-Chicken-Game-Computer-Simulation
Two players drive cars towards each other, and the first to swerve away is labeled "chicken," while the other is considered the winner.


This bash script simulates the Chicken Game, a two-player game in which each player independently chooses to either swerve or crash while driving towards each other. The outcomes depend on the choices made by both players.

## Usage

Download the script

Make the script executable.

chmod +x .chicken.sh

Run the script.

./.chicken.sh

View the summarized results, including the counts of swerves and crashes for each player.

Script Details

    The script simulates a specified number of rounds of the Chicken Game.
    Each player independently chooses to swerve or crash in each round.
    The game determines the outcomes based on the choices made by both players.
    The results display the counts of swerves and crashes for each player, as well as instances where both players swerve or both crash.

Customize

Feel free to modify the script or parameters based on your specific needs or explore other game scenarios.

For example, you can change the number of iterations:

bash

# Number of iterations
num_iterations=1000

You can adjust the script to simulate different games or scenarios in game theory by changing the logic within the simulate_chicken_game function.
