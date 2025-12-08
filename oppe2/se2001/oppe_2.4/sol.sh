# 1) Delete DEBUG and INFO lines
/^\[(DEBUG|INFO)\]/d

# 2) Reformat timestamp and capitalize first character of message
s/^\[([A-Z]+)\] \(([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}:[0-9]{2}:[0-9]{2})\) (.) (.*)$/[\1] (\5 \4-\3-\2) \u\6\7/
