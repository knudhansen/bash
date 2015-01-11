#!/bin/bash

find . -name "*.forge" | grep "/rel/" | xargs -t -I {} python knud.py {}

