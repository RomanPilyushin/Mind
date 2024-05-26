Grandmaster level in StarCraft II using multi-agent reinforcement learning
O. Vinyals, Igor Babuschkin, Wojciech M. Czarnecki, Michaël Mathieu, A. Dudzik, Junyoung Chung, David Choi, Richard Powell, Timo Ewalds, Petko Georgiev, Junhyuk Oh, Dan Horgan, M. Kroiss, Ivo Danihelka, Aja Huang, L. Sifre, Trevor Cai, J. Agapiou, Max Jaderberg, A. Vezhnevets, Rémi Leblond, Tobias Pohlen, Valentin Dalibard, D. Budden, Yury Sulsky, James Molloy, T. Paine, Caglar Gulcehre, Ziyun Wang, T. Pfaff, Yuhuai Wu, Roman Ring, Dani Yogatama, Dario Wünsch, Katrina McKinney, Oliver Smith, T. Schaul, T. Lillicrap, K. Kavukcuoglu, D. Hassabis, C. Apps, David Silver
Nature, 2019
No abstract available
[External Link](https://www.semanticscholar.org/paper/361c00b22e29d0816ca896513d2c165e26399821)

10.1038/s41586-019-1724-z


@Article{Samvelyan2019TheSM,
 author = {Mikayel Samvelyan and Tabish Rashid and C. S. D. Witt and Gregory Farquhar and Nantas Nardelli and Tim G. J. Rudner and Chia-Man Hung and Philip H. S. Torr and Jakob N. Foerster and Shimon Whiteson},
 booktitle = {Adaptive Agents and Multi-Agent Systems},
 journal = {ArXiv},
 title = {The StarCraft Multi-Agent Challenge},
 volume = {abs/1902.04043},
 year = {2019}
}


**The StarCraft Multi-Agent Challenge**
Mikayel Samvelyan, Tabish Rashid, C. S. D. Witt, Gregory Farquhar, Nantas Nardelli, Tim G. J. Rudner, Chia-Man Hung, Philip H. S. Torr, Jakob N. Foerster, Shimon Whiteson
*ArXiv, 2019*
**Abstract**
In the last few years, deep multi-agent reinforcement learning (RL) has become a highly active area of research. A particularly challenging class of problems in this area is partially observable, cooperative, multi-agent learning, in which teams of agents must learn to coordinate their behaviour while conditioning only on their private observations. This is an attractive research area since such problems are relevant to a large number of real-world systems and are also more amenable to evaluation than general-sum problems. Standardised environments such as the ALE and MuJoCo have allowed single-agent RL to move beyond toy domains, such as grid worlds. However, there is no comparable benchmark for cooperative multi-agent RL. As a result, most papers in this field use one-off toy problems, making it difficult to measure real progress. In this paper, we propose the StarCraft Multi-Agent Challenge (SMAC) as a benchmark problem to fill this gap. SMAC is based on the popular real-time strategy game StarCraft II and focuses on micromanagement challenges where each unit is controlled by an independent agent that must act based on local observations. We offer a diverse set of challenge maps and recommendations for best practices in benchmarking and evaluations. We also open-source a deep multi-agent RL learning framework including state-of-the-art algorithms. We believe that SMAC can provide a standard benchmark environment for years to come. Videos of our best agents for several SMAC scenarios are available at: https://youtu.be/VZ7zmQ_obZ0.
Could not recover DOI


**StarCraft Micromanagement With Reinforcement Learning and Curriculum Transfer Learning**
Kun Shao, Yuanheng Zhu, Dongbin Zhao
*IEEE Transactions on Emerging Topics in Computational Intelligence, 2018*
**Abstract**
Real-time strategy games have been an important field of game artificial intelligence in recent years. This paper presents a reinforcement learning and curriculum transfer learning method to control multiple units in StarCraft micromanagement. We define an efficient state representation, which breaks down the complexity caused by the large state space in the game environment. Then, a parameter sharing multi-agent gradient-descent Sarsa($\lambda$) algorithm is proposed to train the units. The learning policy is shared among our units to encourage cooperative behaviors. We use a neural network as a function approximator to estimate the action–value function, and propose a reward function to help units balance their move and attack. In addition, a transfer learning method is used to extend our model to more difficult scenarios, which accelerates the training process and improves the learning performance. In small-scale scenarios, our units successfully learn to combat and defeat the built-in AI with 100% win rates. In large-scale scenarios, the curriculum transfer learning method is used to progressively train a group of units, and it shows superior performance over some baseline methods in target scenarios. With reinforcement learning and curriculum transfer learning, our units are able to learn appropriate strategies in StarCraft micromanagement scenarios.
10.1109/TETCI.2018.2823329
