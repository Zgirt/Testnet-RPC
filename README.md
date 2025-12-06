# Testnet-RPC

This docker-compose is for the RPC of the public test network.

## Setup

To use it for your node, you need to:

### 1. Enable logging and passcodes in `private_settings.h`

```cpp
#define ENABLE_QUBIC_LOGGING_EVENT 1 // turn on logging events

static unsigned long long logReaderPasscodes[4] = {
    1, 2, 3, 4 // REMOVE THIS ENTRY AND REPLACE IT WITH YOUR OWN RANDOM NUMBERS IN [0..18446744073709551615] RANGE IF LOGGING IS ENABLED
};
```

### 2. Change the IP to your own in the docker-compose file

Update these two lines with your node's IP:

```yaml
QUBIC_EVENTS_POOL_NODE_PASSCODES: "YOUR_IP:AAAAAAAAAAEAAAAAAAAAAgAAAAAAAAADAAAAAAAAAAQ="
```

```yaml
QUBIC_NODES_QUBIC_PEER_LIST: "YOUR_IP" # Insert list of node IPs here. Ex: "123.12.12.123;321.32.32.321;312.31.31.312"
```

## Run

```bash
docker compose up -d
```
