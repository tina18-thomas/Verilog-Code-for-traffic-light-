# 🚦 Traffic Light Controller using Finite State Machine (FSM) in Verilog

This project implements a **Traffic Light Controller** using a **Finite State Machine (FSM)** written in **Verilog HDL**. The system is designed to model the behavior of a standard traffic signal at an intersection, cycling through red, yellow, and green lights based on a well-defined state sequence.

---

## 🛠️ Technologies Used

- 🧾 **HDL Language**: Verilog  
- 💻 **Design Tool**: Xilinx Vivado  
- 🧪 **Simulation Tool**: Vivado Behavioral Simulator  
- 🔁 **Design Pattern**: Mealy or Moore FSM (depending on your implementation)

---

## 🎯 Objective

The goal of this project was to design a **synchronous traffic signal controller** that:
- Operates based on a **clock signal**
- Transitions through traffic light states in a logical, timed sequence
- Demonstrates **finite state machine modeling** in Verilog

---

## 🔧 Project Features

- Models a **three-light signal system**: Red → Green → Yellow
- Fully synchronous design (driven by clock and reset)
- Designed using FSM principles: `state`, `next_state`, and `output` logic
- Clean and readable Verilog code with modular structure

---

## 📂 Files Included

| File Name              | Description                                      |
|------------------------|--------------------------------------------------|
| `traffic_light.v`      | Main Verilog module implementing the FSM logic   |
| `traffic_light_tb.v`   | Testbench for simulating and verifying behavior  |

> Ensure that both files are added to your Vivado project for simulation.

---

## 🧪 How to Simulate

1. Create a new RTL project in **Vivado**
2. Add `traffic_light.v` as a **Design Source**
3. Add `traffic_light_tb.v` as a **Simulation Source**
4. Run **Behavioral Simulation**
5. Observe the timing diagram to verify correct transitions:  
   e.g., `RED → GREEN → YELLOW → RED`

---

## 🧠 Learning Outcomes

Through this project, I gained hands-on experience in:

- Designing real-time control systems using **finite state machines**
- Applying **state encoding and transition logic** in Verilog
- Writing clean and testable RTL code
- Verifying timing-dependent behavior through simulation

---

## 📸 Simulation Result (Optional)

> *(Add a waveform screenshot here if available)*  
> e.g., “The image below shows the traffic lights cycling correctly with the expected delay per state.”

---

## 🚀 Future Enhancements

- Add pedestrian crossing signals
- Parameterize timing delays for configurable durations
- Extend to a **4-way intersection controller**
- Implement using **Mealy FSM** for output-before-transition behavior

---

## NOTE :
> The main source code and testbech files are inside the .srcs folder
> 👨‍💻 Designed and tested as part of my Verilog learning journey.
> 📫 Feel free to reach out or fork this repo if you'd like to contribute or suggest improvements.
