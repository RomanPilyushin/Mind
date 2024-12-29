---
tags:
  - Deep-Reinforcement-Learning
  - Machine-Learning
  - uncompleted
link: 
aliases:
  - RL
---
### **Definition**

Reinforcement Learning is "teach by experience"

Supervised Learning is "teach by example" (like Computer Vision)

Lex from MIT about Deep RL[^1]

![[Reinforcement Learning.png]]

Frameworks of RL

![[Reinforcement Learning-1.png]]

- **Core Idea**:
    - RL is a machine learning paradigm where an agent learns to make decisions by interacting with an environment to maximize cumulative rewards over time.
- **How It Works**:
    - The agent observes the current state of the environment, selects an action based on its policy, and receives feedback (reward) and the next state.
    - Learning is driven by trial and error using algorithms like Q-Learning or SARSA.
- **Key Challenge**:
    - RL struggles with high-dimensional state spaces because it typically relies on tabular representations or hand-crafted features.

### Major Components of an RL Agent

![[Reinforcement Learning-2.png]]

Policy
Value Function
Model

### **Learning Method**

- Uses lookup tables or simple function approximators (e.g., linear models) to represent value functions or policies.

- Example Algorithms:
        - **Q-Learning**: Updates a Q-table based on observed state-action pairs.
        - **SARSA**: Similar to Q-Learning but considers the next action when updating.


### Robot in a Room

Reward Structure pf the RL Agent

![[Reinforcement Learning-3.png]]

![[Reinforcement Learning-4.png]]

![[Reinforcement Learning-5.png]]

![[Reinforcement Learning-6.png]]

![[Reinforcement Learning-7.png]]

![[Reinforcement Learning-8.png]]
### **Applications**

- Games with small state spaces (e.g., tic-tac-toe, chess).
- Simple robotics (low-dimensional state and action spaces).
- Industrial process control (if the environment is well-defined).

### Taxonomy of RL Methods

![[Reinforcement Learning-9.png]]

### **Computational Requirements**

- Computationally lighter, as it doesn't require complex neural networks.
- Works well with small-scale problems and environments.

### **Comparison Table**

| Feature                    | **Reinforcement Learning (RL)**     | **Deep Reinforcement Learning**             |
| -------------------------- | ----------------------------------- | ------------------------------------------- |
| **State Representation**   | Tabular or hand-crafted features    | Neural networks for high-dimensional data   |
| **Scalability**            | Limited to small, discrete problems | Scalable to high-dimensional, complex tasks |
| **Function Approximation** | Linear or tabular                   | Deep neural networks                        |
| **Computational Demand**   | Low                                 | High (requires GPUs/TPUs)                   |
| **Applications**           | Simple games, low-dimensional tasks | Complex games, robotics, autonomous systems |

### **When to Use Each Approach**

- Use **RL** if:
    
    - The problem is small-scale, with discrete state and action spaces.
    - Computational resources are limited.
    - Feature engineering can adequately represent the state.
- Use **[[Deep Reinforcement Learning|Deep RL]]** if:
    
    - The problem involves high-dimensional inputs like images or continuous spaces.
    - The environment is complex and cannot be manually engineered.
    - Adequate computational resources are available.

---
## Footnotes

[^1]: [MIT 6.S091: Introduction to Deep Reinforcement Learning (Deep RL) - YouTube](https://www.youtube.com/watch?v=zR11FLZ-O9M&list=WL&index=2)