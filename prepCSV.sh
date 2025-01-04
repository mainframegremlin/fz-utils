#!/bin/bash

# Navigate to the specified directory
cd ~/Documents/flipper-working-dir/log-dumps/wigle-ready

# Loop through all .log files in the directory
for file in *.log; do
  # Check if file exists
  if [ -f "$file" ]; then
    # Create a new filename with .csv extension
    newfile="${file%.log}.csv"

    # Add the header lines to the new CSV file
    echo "WigleWifi-1.6,appRelease=2.78,model=Flipper Zero,release=mntm-008,device=Flipper Zero,display=Flipper Zero,board=ESP32,\"brand=Flipper Zero\",star=Sol,body=4,subBody=0" > "$newfile"
    echo "MAC,SSID,AuthMode,FirstSeen,Channel,Frequency,RSSI,CurrentLatitude,CurrentLongitude,AltitudeMeters,AccuracyMeters,Type" >> "$newfile"

    # Remove the numbering at the beginning of each line and append to the CSV file
    sed -E 's/^.*?\|\s*//' "$file" >> "$newfile"

    echo "Processed $file into $newfile"
  fi
done

echo "All files processed."
