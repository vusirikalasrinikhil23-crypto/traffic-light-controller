# Traffic Light Controller Using Verilog HDL

## Project Overview

This repository contains Verilog HDL implementations of different Traffic Light Controllers using Finite State Machine (FSM) design techniques. The project demonstrates how digital systems can control traffic signals using timing logic and sensor-based decision making.

---

## 1. Timer-Based Traffic Light Controller

### Description

The timer-based controller changes traffic lights automatically after predefined time intervals. The controller follows a fixed sequence of states regardless of traffic conditions.

### FSM States

| State | Main Road | Side Road |
| ----- | --------- | --------- |
| S0    | Green     | Red       |
| S1    | Yellow    | Red       |
| S2    | Red       | Red       |
| S3    | Red       | Green     |
| S4    | Red       | Yellow    |
| S5    | Red       | Red       |

### Working

* The controller starts in State S0.
* Main road receives a green signal for a fixed duration.
* The signal then transitions through yellow and red states.
* The side road receives a green signal after the main road cycle completes.
* The sequence repeats continuously.

### Files

* `Traffic_Light_Time.v` – Verilog design module
* `Traffic_Light_Time_tb.v` – Testbench for simulation

---

## 2. Sensor-Based Traffic Light Controller

### Description

The sensor-based controller changes traffic signals according to vehicle detection inputs. The design uses two sensors:

* SNS1
* SNS2

### FSM States

| State | Traffic Light 1 | Traffic Light 2 |
| ----- | --------------- | --------------- |
| S0    | Green           | Red             |
| S1    | Yellow          | Red             |
| S2    | Red             | Green           |
| S3    | Red             | Yellow          |

### Working

* The controller remains in S0 while no vehicle is detected.
* When SNS2 becomes active, the controller transitions to S1.
* The controller then allows traffic flow on the second road.
* When SNS1 becomes active, the controller completes the cycle and returns to S0.
* This design demonstrates event-driven state transitions.

### Files

* `Traffic_Light_Sensor.v` – Verilog design module
* `Traffic_Light_Sensor_tb.v` – Testbench for simulation

---

## 3. 4-State FSM Traffic Light Controller

### Description

This design implements a traffic light controller using a simple four-state Finite State Machine.

### FSM State Sequence

```text
S0 → S1 → S2 → S3 → S0
```

### Working

* Each state represents a specific traffic signal condition.
* State transitions occur on clock edges.
* The controller continuously cycles through all four states.
* The design demonstrates the fundamentals of FSM-based sequential logic systems.

### Files

* `Traffic_Light_Controller_FSM.v`
* `Traffic_Light_Controller_FSM_tb.v`

---

## Concepts Used

* Verilog HDL
* Finite State Machines (FSM)
* Sequential Logic Design
* State Transitions
* Traffic Signal Control
* Testbench Development
* Digital System Simulation

---

## Tools Used

* ModelSim
* Quartus Prime
* Verilog HDL

---

## Author

**V. Sri Nikhil**
B.Tech Electronics Engineering (VLSI)
Vellore Institute of Technology (VIT), Vellore
