# PI Controller Tuning for a CSTR System with MATLAB

### Overview
This repository contains the MATLAB implementation of a project aimed at tuning a Proportional-Integral (PI) controller for a Continuous Stirred Tank Reactor (CSTR) system involving two exothermal series reactions. The goal is to control the reactor's temperature by regulating the cooling water flow using a PI controller. The Ziegler-Nichols method was applied for tuning, ensuring robust control with minimal errors and stability in both servo and regulatory modes.

### Key Features
- **System Modeling**: Developed a dynamic model of the CSTR system, linearized using Laplace transforms.
- **Control Objective**: Temperature control via cooling water utility in the reactor jacket.
- **Tuning Method**: Ziegler-Nichols method for controller tuning.
- **Error Minimization**: Focused on minimizing Integral Squared Error (ISE) and Integral Absolute Error (IAE).
- **Simulation Tools**: Implemented using MATLAB Simulink and workspace.
  
### Content
- **Assignment**: Documentation of problem formulation and objectives.
- **Report**: Detailed analysis, visualizations, and results.
- **MATLAB Code**: Scripts and Simulink models used in the project.
- **Diagrams & Tables**: Visualization of system dynamics and control performance.

### Files
- `/src`: Contains all MATLAB and Simulink files used for the project.
- `/docs`: Full project report and assignment details.

### Usage
To run the simulations, download the repository and open the files in MATLAB.
Ensure that you have MATLAB and Simulink installed on your system.

### Conclusion
This project demonstrates an effective approach to temperature control in a CSTR system using a PI controller tuned with the Ziegler-Nichols method. The robust performance, achieved through MATLAB simulations, highlights the system's response stability and error minimization.

### Future Work
- Exploration of advanced control strategies (e.g., Model Predictive Control (MPC), adaptive control).
- Integration of real-time optimization techniques.
- Extension to multi-variable control problems.

### Contact
For any queries, feel free to reach out via email at [pooriamotahari@gmail.com](mailto:pooriamotahari@gmail.com) or through [GitHub](https://github.com/Pouria-MK).
