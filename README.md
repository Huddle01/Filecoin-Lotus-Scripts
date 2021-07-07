# Filecoin-Lotus-Scripts
Scripts that help in assisting while working with filecoin lotus node

## make-deal.sh script
Script `make-deal.sh` makes deal making process with filecoin lotus node interactive and fun. It can also send bulk deals automaticaly and can be paired with pm2 to run in parallel. The script need number of CID , payload CID of .car files, number of miners, repective miners id, price perGbEpoch, verified data status, fast retrievable status and deal duration in epoch.

With reputed miners list the script can ensure high success rate with high replication and decentralization.

### Instructions
* get a local copy of script on linux with synced lotus node.
* run `chmod +x make-deal.sh`
* start the script `./make-deal.sh`

![sample run](https://i.ibb.co/qBQX5wV/Screenshot-2021-07-07-at-3-33-24-PM.png)

* the script might need bit modification to accomodate `start-epoch`
