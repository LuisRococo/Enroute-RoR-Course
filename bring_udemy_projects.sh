#!/bin/bash

cp -rf /Users/luisroberto/Documents/ENROUTE/RoR-Workshop/Udemy-tuto/ ./udemy/projects

for project in ./udemy/projects/*/ ; do
    rm -fR "$project/.git"
done