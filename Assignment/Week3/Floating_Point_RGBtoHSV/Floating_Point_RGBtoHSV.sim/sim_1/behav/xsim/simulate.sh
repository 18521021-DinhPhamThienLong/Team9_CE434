#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Mar 27 08:00:54 +07 2021
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim Floating_Point_RGBtoHSV_testbench_behav -key {Behavioral:sim_1:Functional:Floating_Point_RGBtoHSV_testbench} -tclbatch Floating_Point_RGBtoHSV_testbench.tcl -log simulate.log"
xsim Floating_Point_RGBtoHSV_testbench_behav -key {Behavioral:sim_1:Functional:Floating_Point_RGBtoHSV_testbench} -tclbatch Floating_Point_RGBtoHSV_testbench.tcl -log simulate.log
