To run the script on CentOS, follow these steps. Note that they are similar to those you've outlined, with just a few CentOS-specific reminders.

### Step 1: Open the Terminal
Open your terminal in CentOS.

### Step 2: Create a New Directory
This step helps keep your files organized:
bash
mkdir check_day_project
cd check_day_project


### Step 3: Create the Shell Script File
Create a shell script file named check_day.sh and make it executable:
bash
touch check_day.sh
chmod +x check_day.sh


### Step 4: Edit the Script
You can use a text editor like nano or vim to open the file:
bash
nano check_day.sh

Or if nano isn't installed, use vim:
bash
vim check_day.sh


### Step 5: Write the Script
Paste the following code into check_day.sh:
bash
#!/bin/bash

# Function to check the day of the week for a given date
check_day() {
    date_input="$1"

    # Check if the date is valid
    if ! date -d "$date_input" >/dev/null 2>&1; then
        echo "Invalid date format. Please use YYYY-MM-DD."
        exit 1
    fi

    # Get the day of the week
    day_of_week=$(date -d "$date_input" '+%A')
    echo "The day of the week for $date_input is: $day_of_week"
}

# Main script execution
if [ $# -eq 0 ]; then
    echo "Usage: $0 YYYY-MM-DD"
    exit 1
fi

check_day "$1"


### Step 6: Save and Exit
If you're using nano, press CTRL + X, then Y to confirm, and Enter to save. If you're using vim, press Esc, then type :wq and press Enter to save and exit.

### Step 7: Run the Script
Run the script by providing a date as an argument. For example:
bash
./check_day.sh 2024-10-28


### Expected Output
If the date is valid, you should see output like:
bash
The day of the week for 2024-10-28 is: Monday


### Additional Notes for CentOS
- Make sure date is available by default on CentOS (most installations have it).
- If you encounter issues, verify that bash is correctly installed by running bash --version.
