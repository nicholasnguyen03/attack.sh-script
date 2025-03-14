Overview:
This project demonstrates a Directory Traversal Attack on a vulnerable FTP server.
By exploiting insecure file access controls, the attack retrieves unauthorized files from the system. 
The process is automated using a Bash script (attack.sh), which executes the attack and extracts sensitive data.

How It Works
Starts the vulnerable FTP server (hftp).
Performs a directory traversal attack to access restricted files.
Captures and analyzes network traffic using tcpdump and tshark.
Extracts sensitive data, such as:
general/reports.txt → Confidential financial report.
/etc/passwd → System user accounts.
/var/log/auth.log → Authentication logs.
