# GMAT Docker Development Container

Quick-and-dirty repo to create a development container with GMAT installed. YMMV.

# Usage

- Install Docker and docker-compose via Docker's instructions
- `./start.sh` to start the container & hop into it
- Once the shell opens, run `GMAT-R2022a` to start the GUI
- The local repo is mounted into the container under `/app`; save file outputs there
- `./stop.sh` to stop the container
