# fz-utils
Scripts for cleaning up data generated from marauder tools within momentum firmware.

## archiveCSV
Takes previously converted .log -> .csv files, and simply appends -processed to them. This is under the assumption that generated .log files continue with current naming conventions when stored on an SD card e.g. file-01, file-02, etc. Will likely expand to some type of numbering system, to avoid having to clean up the processed directory every time.

## prepCSV
Takes generated .log files that were pulled from an SD card and preps them for upload to wigle; automatically handling the required header/subheader. Leaves .log files in tact for archival purposes.
