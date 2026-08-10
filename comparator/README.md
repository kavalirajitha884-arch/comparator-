# 2-Bit Comparator Using Verilog HDL

## Description

This project implements a 2-bit magnitude comparator using Verilog HDL. The comparator compares two 2-bit binary inputs (A and B) and generates three outputs:
- A_gt_B: High when A is greater than B
- A_eq_B: High when A is equal to B
- A_lt_B: High when A is less than B

## Truth Table

| A | B | A_gt_B | A_eq_B | A_lt_B |
|---|---|---------|---------|---------|
|00|00|0|1|0|
|00|01|0|0|1|
|01|00|1|0|0|
|10|10|0|1|0|
|11|10|1|0|0|

## Project Files

- src/comparator.v
- tb/comparator_tb.v
- sim/comparator.vcd

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

## Compilation

iverilog -o comparator src/comparator.v tb/comparator_tb.v

## Simulation

vvp comparator

## Waveform

gtkwave comparator.vcd