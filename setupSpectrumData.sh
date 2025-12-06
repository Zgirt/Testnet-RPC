#!/bin/bash

# Parse the spectrum and upload relevant data to the database
./qubic-stats-processor --mongo-username qubic --mongo-password password --app-mode=spectrum_parser --spectrum-parser-spectrum-file="spectrum.189"
