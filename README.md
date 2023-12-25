# Ping Scan Script

This script performs a ping scan on a specific IP address range. It uses the parallel command to run the ping commands concurrently, improving the scanning speed.

## Prerequisites

- Linux environment
- `parallel` command installed

## Usage

To use this script, follow these steps:

1. **Clone the repository:**

   
bash
   git clone <repository_url>
   
2. **Navigate to the script directory:**

   
bash
   cd ping-scan-script
   
3. **Make the script executable:**

   
bash
   chmod +x ping_scan.sh
   
4. **Run the script by passing an IP address as an argument:**

   
bash
   ./ping_scan.sh <ip_address>
   
   Replace `` with the desired IP address range to scan. For example, to scan the IP addresses ranging from 192.168.0.1 to 192.168.0.254:

   
bash
   ./ping_scan.sh 192.168.0
   
5. **The script will initiate the ping scan and store the results in a timestamped file named `ping_results_.txt`.**

6. **Once the scan is completed, the script will display a message indicating the completion and the location of the result file.**

## License

This script is open source and available under the [MIT License](LICENSE).
