# Traffic Light Controller Using Verilog HDL

## Overview

This repository contains Verilog HDL implementations of Traffic Light Controllers designed using Finite State Machine (FSM) concepts. The project includes:

1. **Traffic Light Controller Using Timer**
2. **Traffic Light Controller Using Sensors**
3. **4-State Traffic Light Controller Using FSM**

These designs demonstrate the application of digital logic design, state machine modeling, and traffic signal control using Verilog HDL.

---

## Features

### Timer-Based Traffic Light Controller

* Implemented using a Finite State Machine (FSM).
* Traffic signal changes automatically based on predefined timing intervals.
* Includes Green, Yellow, and Red light phases.
* Suitable for fixed-time traffic control systems.

### Sensor-Based Traffic Light Controller

* Uses vehicle detection sensors as inputs.
* Traffic signal changes according to traffic conditions.
* Improves traffic flow efficiency compared to fixed-timer systems.
* Demonstrates event-driven state transitions.

### 4-State Traffic Light Controller

* Designed using a 4-State FSM architecture.
* Consists of four traffic light phases:

  * State S0
  * State S1
  * State S2
  * State S3
* Demonstrates FSM-based traffic signal sequencing and control.

---

## FSM Design

The controllers are implemented using Finite State Machines (FSMs), where each state represents a specific traffic signal condition. State transitions occur based on timing constraints or sensor inputs.

### Example State Sequence

```text
S0 → S1 → S2 → S3 → S0
```

---

## Project Structure

```text
├── Traffic_Light_Time.v
├── Traffic_Light_Time_tb.v
├── Traffic_Light_Sensor.v
├── Traffic_Light_Sensor_tb.v
├── Traffic_Light_Controller_FSM.v
├── Traffic_Light_Controller_FSM_tb.v
├── README.md
```

---

## Simulation

The designs were simulated using:

* ModelSim Intel FPGA Starter Edition
* Verilog HDL

Simulation waveforms verify correct state transitions and traffic light operation for all controller implementations.

---

## Technologies Used

* Verilog HDL
* Finite State Machine (FSM)
* ModelSim
* Digital Logic Design

---

## Learning Outcomes

Through this project, the following concepts were explored:

* Finite State Machine (FSM) Design
* Sequential Logic Circuits
* State Transition Modeling
* Verilog HDL Coding
* Testbench Development
* Digital System Simulation

---

## Author

**V. Sri Nikhil**
B.Tech Electronics Engineering (VLSI)
Vellore Institute of Technology (VIT), Vellore
