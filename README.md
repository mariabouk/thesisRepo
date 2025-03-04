# Human Motion Estimation using Swarm Decomposition and Deep Learning on 14 ear-EEG Channel Data

## Overview
This repository contains the implementation and research work related to the thesis **"Human motion estimation using swarm decomposition and deep learning on 14 ear-EEG channel data"** by Maria Boukoutsou, conducted at the **Aristotle University of Thessaloniki, Department of Electrical and Computer Engineering, Telecommunications Division**. The thesis explores an innovative approach to estimating human kinetic states based on ear-EEG signals using **swarm decomposition** and **deep learning techniques**.

## Thesis Abstract
Electroencephalography from the ear region (ear-EEG) is a promising non-invasive technique for brain activity monitoring. This research focuses on analyzing ear-EEG signals recorded during a target discrimination task while participants walk at different speeds. Instead of conventional feature extraction techniques in time and frequency domains, **convolutional neural networks (CNNs)** are employed to recognize motion-related patterns in EEG signals. A key novelty of this work is the retention of **motion-induced artifacts**, which are usually removed in EEG preprocessing, to determine their potential contribution to motion state estimation.

## Key Contributions
- **Swarm Decomposition (SWD)**: Used to convert EEG signals into image-like representations for CNN processing.
- **Convolutional Neural Networks (CNNs)**: Implemented to classify human motion states.
- **Retention of Motion Artifacts**: Investigated the effect of preserving movement-induced artifacts on motion estimation.
- **Efficient Model Training**: Maintained a relatively shallow CNN architecture to optimize computational efficiency while preserving classification accuracy.

## Repository Structure
```
thesisRepo/
│-- data/                     # Contains the EEG dataset (Note: not included for privacy reasons)
│-- notebooks/                # Jupyter notebooks for data preprocessing, signal visualization, and analysis
│-- calculateSWDForTheFinalTrials.m  # Calculates SWD features for final trial data
│-- checkingTheSignals.m           # Signal integrity check and visualization for EEG data
│-- choosingTrials.m               # Script for selecting specific trials from the dataset
│-- conctenateTheDataFromTheSubs.m  # Concatenates data from different subjects for analysis
│-- plotting.m                    # Plotting functions for visualizing signal data and results
│-- plotting2.m                   # Additional plotting functions for more detailed analysis
│-- rejectingProblematicTrials.m   # Identifies and rejects problematic trials from analysis
│-- final_model/                  # Performance metrics, figures, and visualizations generated during analysis for the final model
│-- requirements.txt          # List of required libraries and dependencies to run the project
│-- README.md                 # Documentation providing an overview of the project and setup instructions
```
## Installation & Requirements
To run this project, ensure you have Python installed and set up the required dependencies using:
```
pip install -r requirements.txt
```

## Results
The proposed method successfully differentiates between motion states with high accuracy. The impact of motion artifacts on classification performance was evaluated, showing promising results for real-world motion monitoring applications.

## Status
As of the completion of the project, it will probably be modified in case of more research in the field. It may hold inaccuracies and could be implemented in more efficient ways regarding speed and recources management.



## Support - Contact
If you have questions or you need clarifications, reach out to me:
- mariaboukoutsou12@gmail.com


