# Claire Danzig's Programming Portfolio

## Term 1 Projects

#### Calculator (2025)

This calculator is a custom-built graphical interface created using Processing that allows users to perform basic arithmetic operations and access special functions like square roots, squaring, π, and a memory recall ("ANS") feature. It uses a grid of interactive buttons—some shaped as ellipses, others as rounded rectangles—to input digits, operators, and commands. The calculator tracks left and right operands, dynamically updates the display, and handles operations like addition, subtraction, multiplication, and division. It also includes features like sign toggling, decimal input, and a clear button that resets either the current entry or the entire state. The design emphasizes visual feedback and user interaction, with hover effects and color-coded buttons for intuitive use.

![RunningCalculator](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/images/calc.png?raw=true)

* [Windows](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/src/calculator/macos-calc.zip)
* [MacOS](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/src/calculator/windows-calc.zip)
* [SourceCode]()

#### Digipets (2025)

![DigipetsLogo](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/images/DigipetsLogoGUI.png?raw=true)

This Processing sketch implements a virtual pet (Digipets-style) game with multiple interactive systems, screens, and animated objects. The game is organized around a main loop that switches between different screens (start, play, menu, end, and game over). The player interacts with a pet by feeding it, cleaning it, letting it sleep, playing with toys, and managing waste, all while monitoring several status meters. Visual assets (images, icons, and UI buttons) are heavily used to present a polished game interface.

At the core of gameplay is the Play screen, where the pet is displayed and can be dragged with the mouse. Over time, waste spawns near the pet using a timer system, and the player must drag this waste to a trash can to maintain cleanliness. Interactive objects such as a bath, bed, toy, and food bowl respond to hovering or collision with the pet. The bath generates bubbles, the bed produces floating “Zzz” animations, and food increases the pet’s hunger meter after a delay. These interactions are time-based, requiring the pet to remain near an object for several seconds before meters increase.

The pet’s well-being is tracked using Meter objects (mood, hunger, cleanliness, and sleep). Each meter has visual states (green/orange/red icons) that change based on internal values. These meters influence one another—for example, poor cleanliness or hunger lowers mood. Timers are used so that actions like eating, bathing, and sleeping feel gradual rather than instant. If waste accumulates or meters drop too low, the pet becomes unhappy, and the game can eventually reach a game-over state.

The code is modular, with separate classes handling UI buttons, animations (bubbles and Zzzs), draggable waste, toys, and the pet itself. Mouse input is used extensively for dragging objects, clicking buttons, and triggering interactions. Overall, the project demonstrates a complete small game architecture in Processing, combining animation, state management, user input, and timed gameplay mechanics into a cohesive virtual pet experience.
![DigipetsMockup](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/images/GUImockup.png?raw=true)
![InGameGUI](https://github.com/SkylineHighStudent/Portfolio25-26/blob/main/images/DigipetsGUI.png?raw=true)
