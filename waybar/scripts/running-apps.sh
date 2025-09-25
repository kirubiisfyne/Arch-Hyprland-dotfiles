#!/bin/bash

apps=$(hyprctl clients | grep -Po 'class: \K\S+' | sort | uniq)
echo "$apps"

