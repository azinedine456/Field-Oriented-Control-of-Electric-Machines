# Field-Oriented Control of a PMSM  
This is the GitHub repository of an academic project at the University of Paris-Saclay.

## Project Objectives (Non-exhaustive)
- Understanding dq-modeling and implementing dq and inverse-dq transformations in Simulink.  
- Conducting parameter identification to obtain electrical and mechanical motor parameters.  
- Modeling and simulating a permanent-magnet synchronous motor (PMSM) in Simulink.  
- Implementing speed and current control loops and tuning PI compensators.  
- Modeling and simulating the full vector-control scheme.  
- Validating results against project specifications.  

## Simulation Results
![Speed output in Rad/S for a step function reference speed input](https://github.com/AHZ456/Field-Oriented-Control-of-a-PMSM/assets/83831043/faff4213-9222-4b57-b7c8-2e73739daf03)

---

# Field-Oriented Control of an Induction Motor (IM) – EiCnam Project  
This section describes a similar academic project carried out at EiCnam University, focusing on Field-Oriented Control (FOC) of a squirrel-cage induction motor.

Unlike the PMSM project, this work implements **rotor-flux-oriented vector control**, which requires flux estimation and decoupling between the d and q axes.

## Project Overview  
This project implements the rotor-flux-oriented FOC scheme of an induction motor.  
The main elements of the control are:

- Alignment of the d-axis with the rotor flux.  
- Flux control using the d-axis current (isd).  
- Torque control using the q-axis current (isq).  
- Estimation of the rotor flux and electrical angle.  
- Nested control loops: current loops → flux loop → speed loop.  
- Compensation of cross-coupling terms in the dq equations.  
- Complete Simulink implementation and testing of the control structure.

This project followed the labsheet "Commande vectorielle à flux rotorique orienté".

## Control Strategy Summary

### 1. Rotor-Flux Orientation  
The d-axis is aligned with the rotor flux:  
- isd controls the rotor flux.  
- isq controls the torque.  

### 2. Decoupling of the d and q Axes  
To remove the natural coupling between dq currents, compensation voltages are added:

- v_sd_star = v_sd + e_sd_hat  
- v_sq_star = v_sq + e_sq_hat  

where  
- v_sd and v_sq are the outputs of the PI controllers,  
- e_sd_hat and e_sq_hat are the estimated coupling voltages.

### 3. Nested Control Loops  
FOC requires three loops with different speeds:

1. Current loops (fastest)  
2. Flux loop  
3. Speed loop (slowest)  

A separation by at least a factor 10 between time constants is kept for stability.

### 4. Control Performance Requirements  
Based on the labsheet:

- Zero steady-state error in speed, torque, and flux.  
- Flux loop must behave like a second-order system with damping around 0.7 (For that , it is necessary to use the IP controller that is commented out in the .slx file and set the IP variable to 1 in the .m script). 
- Torque/current loop must behave like a fast first-order system.  
- Speed loop must be faster than the natural mechanical response.

## Tasks Performed  
- Derivation of current-loop equations for the d and q axes.  
- Derivation of transfer functions needed to design PI controllers:  
  - v_sd_star(s) / i_sd(s)  
  - v_sq_star(s) / i_sq(s)  
  - i_sd(s) / phi_rd(s)  
- Tuning of PI controllers for:  
  - isd (flux control)  
  - isq (torque control)  
  - speed loop  
- Simulink implementation of:  
  - inner current loops  
  - flux estimation and regulation  
  - speed control  
  - dq decoupling  
- Validation of loop performance according to the specifications.

## Simulation Results 
<img width="1919" height="920" alt="image" src="https://github.com/user-attachments/assets/5f11a1af-1686-470d-bc36-8e52e54588bd" />


---

