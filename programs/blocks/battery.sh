#!/bin/sh

# Get the charging status
status=$(acpi -b | awk -F', ' '{print $1}' | awk '{print $3}')

# Get the battery percentage value
value=$(acpi | awk '{print $4}' | sed 's/[%,]//g')

# Determine the symbol based on battery percentage and charging status
if [ "$value" -ge 100 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂅"
    else
        symbol="󰁹"
    fi
elif [ "$value" -ge 90 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂋"
    else
        symbol="󰂂"
    fi
elif [ "$value" -ge 80 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂊"
    else
        symbol="󰂁"
    fi
elif [ "$value" -ge 70 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰢞"
    else
        symbol="󰂀"
    fi
elif [ "$value" -ge 60 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂉"
    else
        symbol="󰁿"
    fi
elif [ "$value" -ge 50 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰢝"
    else
        symbol="󰁾"
    fi
elif [ "$value" -ge 40 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂈"
    else
        symbol="󰁽"
    fi
elif [ "$value" -ge 30 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂇"
    else
        symbol="󰁼"
    fi
elif [ "$value" -ge 20 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰂆"
    else
        symbol="󰁻"
    fi
elif [ "$value" -ge 10 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰢜"
    else
        symbol="󰁺"
    fi
elif [ "$value" -ge 5 ]; then
    if [ "$status" = "Charging" ]; then
        symbol="󰢜"
    else
        symbol="󰁺"
    fi
else # For values less than 5%
    if [ "$status" = "Charging" ]; then
        symbol="󰢟"
    else
        symbol="󰂃"
    fi
fi

# Output the final symbol and battery percentage 
echo "$symbol $value%"
