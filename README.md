# UDP Encryption and Decryption Example Using 2 Network Attached Alveo U280s

UDP encrypt and decrypt example with pre-built network layer and cmac kernels

## Introduction

In this example, we use Xilinx XUP UDP stack [1] and CMAC kernels as pre-built binary object files (.xo files), and link custom user logic to demonstrate sending and receiving UDP packets between two U280 FPGA accelerator cards. The user logic part has both encryption and decryption kernels implemented using AES-128 block cipher. The AES code used in this example was taken from [4]. OpenCL host applications have also been provided for both sender and receiver. The host code is based on the InAccel runtime [3]. The sender side host executable is used to read a specific number of packets from a text file. The user can use an AXI-Lite control signal connected to the user logic to either encrypt or directly pass these packets over the network layer and cmac to the receiving host. On the receiver side, the user can read the incoming UDP packets as raw data, or decrypt them.   

## Pre-requisites

- An MOC instance should be created by following [this tutorial](https://github.com/OCT-FPGA/oct-tutorials/blob/master/mocsetup/instancesetup.md). You should select the boot image ```vitis-2020.1-ubuntu-18.04``` when creating the instance.  It is recommended to use VNC server to run through this example. A simple SSH client without VNC access will also work, however if the session gets disconnected unexpectedly in the middle of the bitsteream build, you will have to start over. Instructions on how to get GUI access using VNC and SSH can be found [here](https://github.com/OCT-FPGA/oct-tutorials/blob/master/vncsshsetup/README.md).

- A Cloudlab experiment should be created with two nodes. Instructions are given [here](https://github.com/OCT-FPGA/oct-tutorials/tree/master/cloudlab-setup). Note that you don't need to set up the experiment until you finish bitstream generation. The Cloudlab experiment is only needed for the targeting workflow. This workflow has been tested and verified using Xilinx RunTime (XRT) versions 2020.1 and 2020.1.1. Other versions may also support, but not tested. So, you may select the Cloudlab profile ```fpga-post-boot``` with any of these tool versions, and two compute nodes when creating the experiment.  

## Architecture

![plot](images/demo.jpg)

The FPGA bitstream consists of (i) user logic, (ii) UDP stack, and (iii) cmac kernels. The user logic consists of sender and receiver logic which can either encrypt/decrypt or pass-through the incoming data using an AXI-Lite control signal. Network layer (UDP) and cmac are provided as binary files. Therefore, the user will only need to build the user logic, link it with the network layer binary file, and generate a bitstream. Note that sender and receiver bitstreams are identical, and either of the two hosts/FPGAs can be used as the sender/receiver.     

## Clone the repository

First, you should clone the repository using

```git clone https://github.com/OCT-FPGA/network-demo```

## Build the bitstream and host executable

To configure the environment to run Vitis commands, run the following shell commands.

```bash
source /tools/Xilinx/Vitis/2020.1/settings64.sh
source /opt/xilinx/xrt/setup.sh
```

Also install the package ```libc6-dev-i386```.

```bash
sudo apt install libc6-dev-i386
```

Alveo U280 has two 100 Gbps QSFP-28 ports (port 0 and port 1). It is possible to build a bitstream that uses either of these two to send/receive packets. 

To use port 0:

```make all INTERFACE=0```

To use port 1:

```make all INTERFACE=1```

You may also pass ```JOBS=<number of jobs>``` as an argument to speed up the build process. The default is 8. This will create sender and receiver-side host executables and an FPGA bitstream with the logic shown in the figure. The bitstream build process can take up to 4~5 hours depending on the flavor of your MOC instance and the number of jobs that you specified.  

## Copy the bitstream and host executables to CloudLab

After completing the bitstream generation, You need to copy the bitstream and two host executables to the two CloudLab nodes.

```bash
scp -i <CloudLab private key> <bitstream> <receiver host executable> <sender host executable> <text file> <user name>@<CloudLab node IP>:<destination directory>
```

Example:

Imagine you have created an experiment with CloudLab nodes pc154 and pc157. Copy these files to both nodes.

```bash
scp -i ~/.ssh/cloudlab_openssh ./build_hw_if0/demo_if0.xclbin ./host/build_sw_if0/host_receiver_if0 ./host/build_sw_if0/host_sender_if0 ./host/alice29.txt suranga@pc154.cloudlab.umass.edu:~
```

```bash
scp -i ~/.ssh/cloudlab_openssh ./build_hw_if0/demo_if0.xclbin ./host/build_sw_if0/host_receiver_if0 ./host/build_sw_if0/host_sender_if0 ./host/alice29.txt suranga@pc157.cloudlab.umass.edu:~
```

## Run the program

You can now use pc154 as the sender and pc157 as the receiver or vice versa. 

Sender side syntax:

```bash
./host_sender_<interface ID> <number of packets> <encrypt (optional)>
```

For example, if you want to send 1 encrypted UDP packet, you should run

```
./host_sender_if0 1 encrypt
```

at the sender node.

Receiver side syntax:

```bash
./host_receiver_<interface ID> <number of packets> <decrypt (optional)>
```

If you want to receive 1 UDP packet without decrypting, you should run

```
./host_receiver_if0 1
```

![plot](images/sender.png)

![plot](images/receiver.png)

## References
[1] XUP Vitis Network Example (VNx) https://github.com/Xilinx/xup_vitis_network_example

[2] Vitis with 100 Gbps TCP/IP Network Stack https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP

[3] InAccel runtime https://github.com/inaccel/runtime/tree/Xilinx-MP/src/inaccel

[4] An HLS Implementation of the Advanced Encryption Standard (AES) http://venividiwiki.ee.virginia.edu/mediawiki/index.php/ToolsXilinxLabsRTLHLSAES