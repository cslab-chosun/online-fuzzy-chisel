import os
import subprocess
import glob

MODELSIM = "/home/sina/intelFPGA/20.1/modelsim_ase/bin"

if not os.path.exists(MODELSIM):
    print("Error: The path mdoes not exist.")
    exit()
else:
    print("The modelsim path found.")

MODELSIM_VCD2WLF = MODELSIM + "/vcd2wlf"
MODELSIM_VSIM = MODELSIM + "/vsim"

#
# Get the current script's directory
#
current_script_path = os.path.dirname(os.path.abspath(__file__))

WAVE_OUTPUT_FILES_PATH = current_script_path + \
    "/../test_run_dir/DUT_should_pass/"

print("Current script path:", WAVE_OUTPUT_FILES_PATH)

# Get all files in directory
files = glob.glob(WAVE_OUTPUT_FILES_PATH + "/*")

# Sort files by last modified time
files.sort(key=lambda x: os.path.getmtime(x))


latest_vcd_file = files[-1]

print("latest file: " + latest_vcd_file)

result = subprocess.run(
    [MODELSIM_VCD2WLF, latest_vcd_file, latest_vcd_file + ".wlf"], stdout=subprocess.PIPE)
print(result.stdout.decode())

#
# Run the generated WLF file
#
print("openning file in vsim: " + latest_vcd_file + ".wlf")
subprocess.run([MODELSIM_VSIM, latest_vcd_file + ".wlf"])
