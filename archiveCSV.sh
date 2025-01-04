#!/bin/bash

# Navigate to where our files are, move them to an archival location
cd ~/Documents/flipper-working-dir/log-dumps/wigle-ready
mv *.csv processed/ && cd processed

# Loop through all .csv files in the directory
for file in *.csv; do
  # Check if file exists
  if [ -f "$file" ]; then
    # Create the new filename
    newfile="${file%.csv}-processed.csv"

    # Rename the file
    mv "$file" "$newfile"

    echo "Renamed $file to $newfile"
  fi
done

echo "All CSV files processed."
