# metabase-for-zerops
metabase install script for zerops

## Zerops import syntax

```yaml
services:
  # Service will be accessible through zcli VPN under: http://metabase
- hostname: metabase
  # Type and version of a used service.
  type: go@1 #we don't support java at the moment, so we use go@1 (static binary container)
  # Whether the service will be run on one or multiple containers.
  # Since this is a utility service, using only one container is fine.
  mode: NON_HA
  # port on which our service will run, port 3000 is default for metabase
  ports:
      - port: 3000
  # entry point for our application
  startCommand: ./start.sh
  # Repository that contains adminer code with build and deploy instructions.
  buildFromGit: https://github.com/zeropsio/metabase-for-zerops@main
```

See the [Zerops documentation](https://docs.zerops.io/documentation/export-import/project-service-export-import.html) to understand how to use it.