#!/bin/bash

export PYTHONPATH=$PYTHONPATH:./pointbreak \
&& gdb -q -x pointbreak/main.py core
