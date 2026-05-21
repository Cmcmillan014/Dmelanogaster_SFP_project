#!/usr/bin/env bash
# This script processes the FASTA headers of the D. yakuba CDS sequences from FlyBase.
# It extracts the FBtr identifier, gene name, and species information, and formats the header. 
awk '
/^>/ {
    match($0, /FBtr[0-9]+/, fbtr)
    match($0, /Dyak\\([^-\s]+)/, gene)
    match($0, /species=([^;]+)/, species)

    printf(">%s gene=%s species=%s\n", fbtr[0], gene[1], species[1])
    next
}
{ print }
' data/FlyBase/dyak/dyak-all-CDS-r1.04.fasta > data/FlyBase/dyak/dyak_cds.fasta