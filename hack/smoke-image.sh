#!/bin/bash

# get tag
cp ./smoke-scripts/gather ./collection-scripts/gather
sed '9,12d' -i ./collection-scripts/gather
export IMAGE_TAG=get
make must-gather

# desc tag
cp ./smoke-scripts/gather ./collection-scripts/gather
sed '8d' -i ./collection-scripts/gather
sed '10,12d' -i ./collection-scripts/gather
export IMAGE_TAG=desc
make must-gather

# yaml tag
cp ./smoke-scripts/gather ./collection-scripts/gather
sed '8,9d' -i ./collection-scripts/gather
sed '11,12d' -i ./collection-scripts/gather
export IMAGE_TAG=yaml
make must-gather

# log tag
cp ./smoke-scripts/gather ./collection-scripts/gather
sed '8,10d' -i ./collection-scripts/gather
sed '12d' -i ./collection-scripts/gather
export IMAGE_TAG=log
make must-gather

# event tag
cp ./smoke-scripts/gather ./collection-scripts/gather
sed '8,11d' -i ./collection-scripts/gather
export IMAGE_TAG=event
make must-gather

# all tag
cp ./collection-scripts/gather_original ./collection-scripts/gather
export IMAGE_TAG=all
make must-gather


