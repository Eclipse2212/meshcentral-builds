# meshcentral-builds
Docker container based on https://github.com/Ylianst/MeshCentral
Forked from: https://github.com/uldiseihenbergs/meshcentral-builds


Container is based on node:slim

Volumes required for persistant storage:
- /meshcentral/meshcentral-files
- /meshcentral/meshcentral-data

Optional volumes:
- /meshcentral/meshcentral-backup
- /meshcentral/meshcentral-web
