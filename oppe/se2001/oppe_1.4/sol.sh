# 1) Delete lines with DEBUG or INFO
/^\[(DEBUG|INFO)\]/d

# 2) For the remaining lines:
#    - lowercase the level
#    - swap timestamp from YYYY-MM-DD HH:MM:SS to HH:MM:SS DD-MM-YYYY
s/^\[([A-Z]+)\] \(([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}:[0-9]{2}:[0-9]{2})\) (.*)$/[\L\1\E] (\5 \4-\3-\2) \6/
