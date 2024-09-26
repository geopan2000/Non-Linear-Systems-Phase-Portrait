# Non-Linear-Systems-Phase-Portrait

The assignment focuses on analyzing the dynamics of nonlinear systems, simulating phase-plane portraits, and exploring complex system behaviors through a counter-example to the Poincaré-Bendixson theorem.

## Objectives

This assignment aims to:
- Simulate the dynamics of nonlinear systems using MATLAB.
- Analyze the behavior of a pendulum system for different damping coefficients.
- Plot phase-plane portraits to visualize system trajectories.
- Investigate a counter-example to the Poincaré-Bendixson theorem using the Lorenz system.
- Explore the omega-limit sets for different parameters and discuss the results.

## Task 1: Phase-Plane Portrait of a Pendulum System

### 1.1 System Description

Consider the nonlinear equation of motion for a pendulum:

`ddot(theta) = -k * dot(theta) - sin(theta)`

We can express this system in state-space form by defining:

- `x1 = theta` (the angle)
- `x2 = dot(theta)` (the angular velocity)

The system in state-space form becomes:

- `dot(x1) = x2`
- `dot(x2) = -k * x2 - sin(x1)`

### 1.2 MATLAB Simulation

The system is simulated using the MATLAB function `ode23` for two cases:
- **Case 1**: When `k = 0` (undamped pendulum).
- **Case 2**: When `k = 1` (damped pendulum).

The initial condition for both cases is:
- `theta(0) = 3` radians
- `dot(theta)(0) = 0` radians/second

### 1.3 Results

- **For `k = 0`**: The pendulum exhibits harmonic oscillations, and the omega-limit set is a periodic orbit.
- **For `k = 1`**: The pendulum quickly settles at the origin, and the omega-limit set is the equilibrium point at `(0, 0)`.

### 1.4 Phase-Plane Portraits

The phase-plane portraits for both cases are generated to visualize the system's trajectories:
- **For `k = 0`**: The trajectories form closed loops, indicating periodic motion.
- **For `k = 1`**: All trajectories converge to the origin, representing a stable equilibrium.

### 1.5 Physical Interpretation of `k`

The parameter `k` represents the **damping coefficient**. When `k = 0`, there is no damping, and the system oscillates indefinitely without energy loss. When `k > 0`, the system experiences damping, causing the oscillations to decay over time until the system settles at the equilibrium point.

## Task 2: A Counter-Example to Poincaré-Bendixson

### 2.1 Lorenz System

Consider the following nonlinear system:

- `dot(x1) = sigma * (x2 - x1)`
- `dot(x2) = 28 * x1 - x2 - x1 * x3`
- `dot(x3) = x1 * x2 - (8/3) * x3`

### 2.2 MATLAB Simulation

Simulations are conducted for the system with initial conditions `(x1, x2, x3) = (3, 3, 3)` and different values of the parameter `sigma`:
- **sigma = 1**
- **sigma = 5**
- **sigma = 10**
- **sigma = 20**
- **sigma = -1**
- **sigma = -3**

### 2.3 Results

- **For `sigma = 1`**: The system converges to an equilibrium point.
- **For `sigma = 5` and `sigma = 20`**: The system converges to an equilibrium point, but the trajectories are different.
- **For `sigma = 10`**: The system exhibits complex behavior, where the trajectory neither converges to an equilibrium point nor forms a closed orbit.
- **For `sigma = -1` and `sigma = -3`**: The system oscillates around an equilibrium point without converging to it.

### 2.4 Finding a Value of `sigma` Where the Omega-Limit Set is Neither a Closed Orbit Nor an Equilibrium

For values of `sigma` between 6 and 17, and for negative values of `sigma`, the system does not converge to an equilibrium point nor does it follow a periodic orbit. This demonstrates a counter-example to the Poincaré-Bendixson theorem, which applies only to two-dimensional systems.

## Conclusion

This assignment demonstrates key concepts in the analysis of nonlinear systems. We explored the phase-plane behavior of a pendulum under different damping conditions and used the Lorenz system to illustrate complex dynamic behaviors that serve as a counter-example to classical stability results.

## Files

- **`Ex_1.m`**: MATLAB code for simulating the pendulum system.
- **`Ex_2.m`**: MATLAB code for simulating the Lorenz system.
