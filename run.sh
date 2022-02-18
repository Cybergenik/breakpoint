#!/bin/bash

export PYTHONPATH=$PYTHONPATH:.:./pointbreak \
&& gdb -fullname -quiet -x pointbreak/main.py
