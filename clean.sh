#!/bin/bash
find . -name "#*" -exec rm -v {} \;
find . -name "*~" -exec rm -v {} \;