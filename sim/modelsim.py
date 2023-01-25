import os
import subprocess
import glob

MODELSIM = "/home/sina/intelFPGA/20.1/modelsim_ase/bin"

#
# Check modelsim directory
#
if not os.path.exists(MODELSIM):
    print("[x] Error: The path mdoes not exist")
    exit()
else:
    print("[*] the modelsim path found")

MODELSIM_VCD2WLF = MODELSIM + "/vcd2wlf"
MODELSIM_VSIM = MODELSIM + "/vsim"

#
# Config file variables
#
CONFIG_TEST_MODULE_CLASS = ""
CONFIG_SHOW_ALL_WAVES = True

#
# Check if user is root or not
#
if os.geteuid() != 0:
    print("[x] you should run this script with root (sudo) user permission")
    exit()
else:
    print("[*] user is root")

#
# Get the current script's directory
#
current_script_path = os.path.dirname(os.path.abspath(__file__))

WAVE_OUTPUT_FILES_PATH = current_script_path + \
    "/../test_run_dir/DUT_should_pass/"
CONFIG_FILE_PATH = WAVE_OUTPUT_FILES_PATH + "/modelsim.config"

#
# Check config file
#
if os.path.exists(CONFIG_FILE_PATH) == False:
    print("[x] config file not found")
    exit()

print("[*] current script path:", WAVE_OUTPUT_FILES_PATH)

#
# Interpreting config file
#
with open(CONFIG_FILE_PATH, 'r') as file:
    for line in file:

        if line.lower().startswith("module:") or line.lower().startswith("module :"):
            # it's the test module name
            CONFIG_TEST_MODULE_CLASS = x = line.split(":")[1]
        else:
            # it's a wave, so no longer need to show all waves
            CONFIG_SHOW_ALL_WAVES = False

#
# Set the current working directory
#
os.chdir(current_script_path + "/..")
print("[*] current working directory: " + format(os.getcwd()))


result = subprocess.run(
    ["sbt", "testOnly MinMaxParallelOnlineComparatorTest -- -DwriteVcd=1"], stdout=subprocess.PIPE)
print(result.stdout.decode())

#
# Remove all the previous *.wlf files
#
for file_name in os.listdir(WAVE_OUTPUT_FILES_PATH):
    if file_name.endswith('.wlf'):
        os.remove(os.path.join(WAVE_OUTPUT_FILES_PATH, file_name))

#
# Get all files in directory
#
files = glob.glob(WAVE_OUTPUT_FILES_PATH + "/*")

#
# Sort files by last modified time
#
files.sort(key=lambda x: os.path.getmtime(x))

#
# Get the latest modified file
#
latest_vcd_file = files[-1]

print("[*] latest file: " + latest_vcd_file)

result = subprocess.run(
    [MODELSIM_VCD2WLF, latest_vcd_file, latest_vcd_file + ".wlf"], stdout=subprocess.PIPE)
print(result.stdout.decode())

#
# Run the generated WLF file
#
print("[*] openning file in vsim: " + latest_vcd_file + ".wlf")
subprocess.run([MODELSIM_VSIM, latest_vcd_file + ".wlf"])
