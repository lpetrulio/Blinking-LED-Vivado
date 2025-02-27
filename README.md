# Blinking-LED-Vivado
Design, Constraints, and Clock Wizard modules for blinking LED on ARTY A7 with Vivado

First time trying out the clock wizard for the Arty A7.  The 100MHz system clock connected to pin E3 is fed to the clock divider to produce a signal of a 1Hz frequency to blink the LED. 

Verification folder includes the testbench to test the clock divider module, making sure it is succesfully slowing the 100MHz input clock down to 1Hz to drive the LED, with a high active reset initially.  TB runs for 1.5s to allow full toggle cycle of 1Hz output clock. Screenshot of waveform included.
