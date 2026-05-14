#!/bin/bash
# Algmet Robust Parser v5 - Record Breaker Edition
LC_NUMERIC=C awk '
BEGIN {
    # Din nåværende legendariske rekord [cite: 2026-01-13]
    GOLD_RECORD = 7.182
}
/Startup finished/ {
    k_val=0; u_val=0;
    
    if (match($0, /[0-9.]+s \(?kernel\)?/)) {
        str = substr($0, RSTART, RLENGTH);
        match(str, /[0-9.]+/);
        k_val = substr(str, RSTART, RLENGTH);
    }
    
    if (match($0, /[0-9.]+s \(?userspace\)?/)) {
        str = substr($0, RSTART, RLENGTH);
        match(str, /[0-9.]+/);
        u_val = substr(str, RSTART, RLENGTH);
    }

    if (k_val > 0 && u_val > 0) {
        k_sum += k_val; u_sum += u_val; count++;
        total = k_val + u_val;
        
        # Sjekker om denne spesifikke oppstarten er en ny rekord
        if (total < GOLD_RECORD) {
            records_found++;
            last_record = total;
        }

        if (count == 1 || total < min) min = total;
        if (total > max) max = total;
    }
}
END {
    if (count > 0) {
        printf "\n--- ALGMET REPORT: NP370R5E FRANKENSTEIN ---\n";
        printf "Datapunkter analysert: %d\n", count;
        printf "Gjennomsnitt Total:     %6.3fs\n", (k_sum+u_sum)/count;
        printf "--------------------------------------------\n";
        printf "BESTE TID (ALL-TIME):   %6.3fs\n", min;
        
        if (min < GOLD_RECORD) {
            printf "\n*** NY ULTIMAT REKORD OPPDAGET! ***\n";
            printf "Du har knust 7.182s-grensen! Ny bunnotering: %.3fs\n", min;
        }
        
        printf "--------------------------------------------\n";
        printf "Hardware Efficiency:    %6.1f%%\n", (k_sum/(k_sum+u_sum))*100;
        printf "Status: Maskinen yter optimalt i Frankenstein-modus!\n";
    }
}' ~/boot_historikk.txt
