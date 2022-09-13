#!/bin/bash

projects=()
# projects+=("/Users/luisroberto/Documents/ENROUTE/RoR-Workshop/udemy-ror-projects/alpha-blog")
# projects+=("/Users/luisroberto/Documents/ENROUTE/RoR-Workshop/udemy-ror-projects/message_me")
# projects+=("/Users/luisroberto/Documents/ENROUTE/RoR-Workshop/udemy-ror-projects/finance-tracker")
# projects+=("/Users/luisroberto/Documents/ENROUTE/RoR-Workshop/udemy-ror-projects/photo-app")
projects+=("/Users/luisroberto/Documents/ENROUTE/RoR-Workshop/udemy-ror-projects/univ-app")


for project in "${projects[@]}" ;
do
    cp -rf "${project}" ./udemy/projects
done

for project in ./udemy/projects/*/ ; do
    rm -fR "$project/.git"
done
