#!/usr/bin/env python
from pathlib  import Path

BASE_DIR = Path(__file__).resolve().parent.parent

# Confirm Base directory
if __name__=='__main__':
    print("BASE_DIR: ", BASE_DIR)