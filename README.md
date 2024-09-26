# Non-Linear-Systems-Phase-Portrait

 The assignment focuses on analyzing the dynamics of nonlinear systems, simulating phase-plane portraits, and exploring complex system behaviors through a counter-example to the Poincaré-Bendixson theorem.

## Objectives

This assignment aims to:
- Simulate the dynamics of nonlinear systems using MATLAB.
- Analyze the behavior of a pendulum system for different damping coefficients.
- Plot phase-plane portraits to visualize system trajectories.
- Investigate a counter-example to the Poincaré-Bendixson theorem using the Lorenz system.
- Explore the ω-limit sets for different parameters and discuss the results.

## Task 1: Phase-Plane Portrait of a Pendulum System

### 1.1 System Description

Consider the nonlinear equation of motion for a pendulum:

\[
\ddot{\theta} = -k\dot{\theta} - \sin(\theta)
\]

We express this system in state-space form by defining:

\[
x_1 = \theta, \quad x_2 = \dot{\theta}
\]

This results in the following first-order system:

\[
\dot{x}_1 = x_2
\]
\[
\dot{x}_2 = -kx_2 - \sin(x_1)
\]

### 1.2 MATLAB Simulation

The system is simulated using the MATLAB function `ode23` for two cases:
- **Case 1**: \( k = 0 \) (undamped pendulum).
- **Case 2**: \( k = 1 \) (damped pendulum).

The initial condition for both cases is \( \theta(0) = 3 \) radians and \( \dot{\theta}(0) = 0 \) radians/second.

### 1.3 Results

- **For \( k = 0 \)**: The pendulum exhibits harmonic oscillations, and the ω-limit set is a periodic orbit.
- **For \( k = 1 \)**: The pendulum quickly settles at the origin, and the ω-limit set is the equilibrium point \( (0, 0) \).

### 1.4 Phase-Plane Portraits

The phase-plane portraits for both cases are generated to visualize the system's trajectories:
- **For \( k = 0 \)**: The trajectories form closed loops, indicating periodic motion.
- **For \( k = 1 \)**: All trajectories converge to the origin, representing a stable equilibrium.

### 1.5 Physical Interpretation of \( k \)

The parameter \( k \) represents the damping coefficient. When \( k = 0 \), there is no damping, and the system oscillates indefinitely. When \( k > 0 \), the system experiences damping, causing the oscillations to decay and the system to settle at an equilibrium point.

## Task 2: A Counter-Example to Poincaré-Bendixson

### 2.1 Lorenz System

Consider the following nonlinear system:

\[
\dot{x}_1 = \sigma (x_2 - x_1)
\]
\[
\dot{x}_2 = 28x_1 - x_2 - x_1 x_3
\]
\[
\dot{x}_3 = x_1 x_2 - \frac{8}{3} x_3
\]

### 2.2 MATLAB Simulation

Simulations are conducted for the system with initial conditions \( (x_1, x_2, x_3) = (3, 3, 3) \) and different values of the parameter \( \sigma \):
- **\( \sigma = 1 \)**
- **\( \sigma = 5 \)**
- **\( \sigma = 10 \)**
- **\( \sigma = 20 \)**
- **\( \sigma = -1 \)**
- **\( \sigma = -3 \)**

### 2.3 Results

- **For \( \sigma = 1 \)**: The system converges to an equilibrium point.
- **For \( \sigma = 5 \) and \( \sigma = 20 \)**: The system converges to an equilibrium point, but the trajectories are different.
- **For \( \sigma = 10 \)**: The system exhibits complex behavior, where the trajectory neither converges to an equilibrium point nor forms a closed orbit.
- **For \( \sigma = -1 \) and \( \sigma = -3 \)**: The system oscillates around an equilibrium point without converging to it.

### 2.4 Finding a Value of \( \sigma \) Where the ω-Limit Set is Neither a Closed Orbit Nor an Equilibrium

For values of \( \sigma \) between 6 and 17, and for negative values of \( \sigma \), the system does not converge to an equilibrium point nor does it follow a periodic orbit. This demonstrates a counter-example to the Poincaré-Bendixson theorem, which applies only to two-dimensional systems.

## Conclusion

This assignment demonstrates key concepts in the analysis of nonlinear systems. We explored the phase-plane behavior of a pendulum under different damping conditions and used the Lorenz system to illustrate complex dynamic behaviors that serve as a counter-example to classical stability results.

## Files

- **`pendulum.m`**: MATLAB code for simulating the pendulum system.
- **`lorenz.m`**: MATLAB code for simulating the Lorenz system.
- **`phase_plane.m`**: MATLAB function for plotting phase-plane portraits.

---

This README provides a structured and professional summary of the assignment, clearly explaining each task and its purpose. Let me know if you need further adjustments!
