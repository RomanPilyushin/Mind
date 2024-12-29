---
tags:
  - Deep-Reinforcement-Learning
  - Machine-Learning
  - Deep-RL
  - uncompleted
link: 
aliases:
  - Deep RL
---

### **Definition**

- **Core Idea**:
    - Combines [[Reinforcement Learning|RL]] with **deep learning** to handle high-dimensional and complex state spaces.

![[Deep Reinforcement Learning.png]]

Lecture from Lex about Deep RL[^1]

Deep RL doesnt need God to supervised (Good or Bad)

![[Deep Reinforcement Learning-1.png]]

- **How It Works**:
    - Uses deep neural networks (DNNs) to approximate value functions, policies, or models of the environment.
    - Popularized by successes like Deep Q-Networks (DQN), where DNNs approximate the Q-function instead of using a table.
- **Key Advantage**:
    - Can scale to complex problems, such as playing Atari games, robotics, or autonomous driving.

### **Learning Method**

- Uses DNNs to approximate value functions, policies, or the environment dynamics.

- Example Algorithms:
        - **Deep Q-Network (DQN)**: A neural network approximates the Q-function.
        - **Proximal Policy Optimization (PPO)**: A policy gradient method using neural networks.
        - **Deep Deterministic Policy Gradient (DDPG)**: Handles continuous action spaces with deep networks.


### **Applications**

- Complex video games (e.g., Atari, StarCraft, Dota 2).
- Autonomous vehicles and drones.
- High-dimensional robotic control (e.g., grasping objects).
- Financial trading and portfolio optimization.


### Examples of Deep RL Systems

Cart-Pole Balancing

![[Deep Reinforcement Learning-4.png]]

Doom game

![[Deep Reinforcement Learning-5.png]]

Grasping Objects

![[Deep Reinforcement Learning-6.png]]

### Reward is important in Deep RL Agent

![[Deep Reinforcement Learning-2.png]]

Deep RL agent collects green turbo and never finishes the race

![[Deep Reinforcement Learning-3.png]]


![[Reinforcement Learning#Robot in a Room]]

### 3 Types of RL

![[Deep Reinforcement Learning-7.png]]

Model-Based - you dont need to get a lof of "try and fall", not evolutionary approach
Value-Based - input "real world" - output best actions
Policy-Based - evolutionary approach, plenty "try and fall"

### Q-Learning (Deep Q-Network)

Google DeepMind method solving Atari games

Value-Based Method
From the start, we know nothing and you need just flip the coin to choose your first decision
Decrease epsilon to 0

![[Deep Reinforcement Learning-8.png]]

![[Deep Reinforcement Learning-9.png]]

Each cell is reward

![[Deep Reinforcement Learning-10.png]]

If we would use traditional approach, the size of the table will be immense

The right presentation does matter

![[Deep Reinforcement Learning-11.png]]

Provide a function approximator

![[Deep Reinforcement Learning-12.png]]

![[Deep Reinforcement Learning-13.png]]

![[Deep Reinforcement Learning-14.png]]

![[Deep Reinforcement Learning-15.png]]

Experience Replay - Collection memories
Still a Value-Based method

Network could become unstable quickly
Error calculation (incl the target function) updates only every 1000 steps

![[Deep Reinforcement Learning-16.png]]

![[Deep Reinforcement Learning-17.png]]

### Dueling DQN (DDQN)

![[Deep Reinforcement Learning-18.png]]


![[Deep Reinforcement Learning-19.png]]


### Policy Gradient (PG)

![[Deep Reinforcement Learning-20.png]]

![[Deep Reinforcement Learning-21.png]]

![[Deep Reinforcement Learning-22.png]]

### Advantage Actor-Critic (A2C)


![[Deep Reinforcement Learning-23.png]]

### Asynchronous Advantage Actor-Critic (A3C)

![[Deep Reinforcement Learning-24.png]]

DeepMind and OpenAI have each realisations
### Deep Deterministic Policy Gradient (DDPG)

From DeepMind

![[Deep Reinforcement Learning-25.png]]

### Policy Optimization (PO)

From OpenAI

![[Deep Reinforcement Learning-26.png]]


### AlphaZero

From DeepMind

![[Deep Reinforcement Learning-27.png]]

![[Deep Reinforcement Learning-28.png]]

![[Deep Reinforcement Learning-29.png]]

![[Deep Reinforcement Learning-30.png]]

![[Deep Reinforcement Learning-31.png]]

![[Deep Reinforcement Learning-32.png]]

### Research


![[Deep Reinforcement Learning-33.png]]

- Implement core deep RL algorithms
- Look for tricks and details in papers

- Improve on an existing approach
- Focus on an unsolved tasks
- Create a new task that hasnt been addressed with RL


### **Computational Requirements**

- Computationally intensive, requiring significant processing power (GPUs/TPUs) for training.
- Needs large-scale training data and resources for neural network optimization.
### **Key Challenges in Deep [[Reinforcement Learning|RL]]**

1. **Sample Inefficiency**:
    - Deep [[Reinforcement Learning|RL]] often requires millions of interactions with the environment to converge.
2. **Stability and Convergence**:
    - Training deep networks in [[Reinforcement Learning|RL]] is less stable compared to supervised learning.
3. **Exploration vs Exploitation**:
    - Balancing between exploring new actions and exploiting known good actions is critical.

---

### **Comparison Table**

| Feature                    | **Reinforcement Learning**          | **Deep Reinforcement Learning**             |
| -------------------------- | ----------------------------------- | ------------------------------------------- |
| **State Representation**   | Tabular or hand-crafted features    | Neural networks for high-dimensional data   |
| **Scalability**            | Limited to small, discrete problems | Scalable to high-dimensional, complex tasks |
| **Function Approximation** | Linear or tabular                   | Deep neural networks                        |
| **Computational Demand**   | Low                                 | High (requires GPUs/TPUs)                   |
| **Applications**           | Simple games, low-dimensional tasks | Complex games, robotics, autonomous systems |

---

### **When to Use Each Approach**

- Use **[[Reinforcement Learning|RL]]**  if:
    
    - The problem is small-scale, with discrete state and action spaces.
    - Computational resources are limited.
    - Feature engineering can adequately represent the state.
- Use **Deep [[Reinforcement Learning]]** if:
    
    - The problem involves high-dimensional inputs like images or continuous spaces.
    - The environment is complex and cannot be manually engineered.
    - Adequate computational resources are available.

---
## Footnotes

[^1]: [MIT 6.S091: Introduction to Deep Reinforcement Learning (Deep RL) - YouTube](https://www.youtube.com/watch?v=zR11FLZ-O9M&list=WL&index=2)