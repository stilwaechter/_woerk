#!/bin/sh

PWD="$(pwd)"


select ANSWER in "pass" "clamp" "wordpress"; do
    case $ANSWER in
        "pass" ) sh "$PWD/pass.sh"; break;;
        "clamp" ) sh "$PWD/clamp.sh"; break;;
        "wordpress" ) sh "$PWD/wordpress.sh"; break;;
        * ) echo "\033[0;31mInit has been aborted.\033[0m"; exit;;
    esac
done
