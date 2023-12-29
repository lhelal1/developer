#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Dec 28 23:13:45 2023

@author: lucashelal
"""

import numpy as np 
import matplotlib.pyplot as plt 
import math as mt

def er(x,ax):
    erro=abs(x-ax)/abs(x)
    return erro 