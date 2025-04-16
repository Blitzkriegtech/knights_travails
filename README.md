# Knight's Travails

Knight's Travails is a Ruby project that computes the shortest path a knight can travel on a standard 8×8 chessboard—from a starting square to a target square. The project demonstrates how to implement breadth-first search (BFS) in Ruby while navigating valid knight moves, ensuring that the path taken is the minimal possible.

## Overview

In chess, a knight moves in an "L"-shape: two squares in one direction (either horizontal or vertical) followed by one square in the perpendicular direction (and vice versa). This results in up to eight possible moves from any given position. Knight's Travails uses this movement to build a graph where each node is a board position and each edge corresponds to one of these valid knight moves.

The project employs a breadth-first search (BFS) algorithm to systematically explore all possible moves from the starting position. BFS guarantees that when the target is reached, it is done in the fewest moves possible.

## Features
- **Breadth-First Search (BFS)**: Efficiently finds the shortest path on an unweighed board.
- **Move Validation**: Ensures all moves remain on the board (coordinates between 0 and 7).
- **Path Reconstruction**: Tracks the sequence of moves taken, so that the full path from the starting position to the target is printed.
- **Clear Output**: Notifies you how many moves were required, and displays each step along the way.

## Getting Started

### Prerequisites
- **Ruby**: Make sure you have Ruby installed on your system. You can check your version by running:
```bash
ruby -v
```
- No additional gems are required for this project beyond the Ruby Standard Library (we use 'set').

### Running the Code
1. Clone or Download the Repository
   Clone the repository or copy the knight_moves.rb file to your local machine.

2. Navigate to the Project Directory
   Open your terminal and change the directory:
   ```bash
   cd /path/to/your/project
   ```
3. Run the Script
   Execute the Ruby script using:
   ```bash
   ruby knight_moves.rb
   ```
   The script contains several example calls that demonstrate the knight's shortest path from one coordinate to another.

## Example Output

When executed, you'll see outputs like these in your terminal:
``` ruby
Example 1: From [0,0] to [1,2]
You made it in 1 move! Here's your path:
[0, 0]
[1, 2]

Example 2: From [0,0] to [3,3]
You made it in 2 moves! Here's your path:
[0, 0]
[1, 2]
[3, 3]
```
