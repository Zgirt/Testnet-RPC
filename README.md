# Testnet-RPC

This docker-compose is for the RPC of the public test network.

## Prerequisites

Before running, you need to configure your node's `private_settings.h`:

```cpp
#define ENABLE_QUBIC_LOGGING_EVENT 1 // turn on logging events

static unsigned long long logReaderPasscodes[4] = {
    1, 2, 3, 4 // REMOVE THIS ENTRY AND REPLACE IT WITH YOUR OWN RANDOM NUMBERS IN [0..18446744073709551615] RANGE IF LOGGING IS ENABLED
};
```

Change your passcode from 1,2,3,4 and replace it with your own numbers.

Also change the IP to your own in the docker-compose file:

```yaml
QUBIC_EVENTS_POOL_NODE_PASSCODES: "YOUR_IP:AAAAAAAAAAEAAAAAAAAAAgAAAAAAAAADAAAAAAAAAAQ="
```

```yaml
QUBIC_NODES_QUBIC_PEER_LIST: "YOUR_IP" # Insert list of node IPs here. Ex: "123.12.12.123;321.32.32.321;312.31.31.312"
```

## Quick Start

### 1. Clone the repository

```git clone https://github.com/Zgirt/Testnet-RPC.git```

### 2. Enter the directory

```cd Testnet-RPC```

### 3. Download and extract the spectrum file

```wget https://github.com/Zgirt/Testnet-RPC/releases/download/spectrum189/spectrum.tar.gz```

```tar -xzf spectrum.tar.gz```

### 4. Run the spectrum parser

```chmod +x qubic-stats-processor```

```./setupSpectrumData.sh```

### 5. Install Docker Compose (if not installed)

```curl -L "https://github.com/docker/compose/releases/download/v2.26.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose```

```chmod +x /usr/local/bin/docker-compose```

### 6. Start the services

```docker-compose up -d```
