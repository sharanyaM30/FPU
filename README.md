# FPU - Floating Point Unit
# Introduction
This project aims to implement a floating point unit (FPU) using Verilog. The FPU is designed to handle floating-point operations, adhering to the IEEE 754 standard for binary floating-point arithmetic.

# Project Overview
Objective: Implement a basic FPU capable of performing floating-point arithmetic operations.

Language: Verilog.

Standard: IEEE 754 for binary floating-point arithmetic.

Target Format: Half precision (16-bit) floating-point numbers.

# Key Features
Half Precision Format: The FPU uses a 16-bit format, which includes a sign bit, a 5-bit exponent field, and a 10-bit significand field.

Operation Support: Initially focuses on multiplication, with plans to expand to other operations.

Classification Module: Includes an HP Class module to categorize floating-point values into normal, subnormal, zero, infinity, NaN (Not a Number), and different types of NaNs.

# Modules
HP Class Module: Determines the type of floating-point value (normal, subnormal, zero, infinity, signaling NaN, quiet NaN).

Multiplication Module: Performs floating-point multiplication.

# IEEE 754 Compliance
The project aims to comply with the IEEE 754 standard, which includes encoding for:

Zeroes: Positive and negative zero.

Infinities: Positive and negative infinity.

NaNs: Signaling and quiet NaNs.

Subnormals: Special values for very small numbers.

# Future Development
Additional Operations: Implement other floating-point operations like addition, subtraction, division, and square root.

Software Integration: Allow for software implementation of remaining operations not covered by the hardware.

# Requirements
Verilog Compiler: A Verilog compiler or simulator (e.g., Vivado, Quartus) is required to compile and test the code.

Digital Logic Basics: Familiarity with digital logic and Verilog is necessary to understand and modify the code.
