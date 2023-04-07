create_clock -period 10.000 -name clock -waveform {0.000 5.000} -add
create_clock -period 10.000 -name clock_1 -waveform {0.000 5.000} -add [get_ports clock]
