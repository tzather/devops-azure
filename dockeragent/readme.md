# Steps to setup docker agent in development environment

- Follow the stesp in [Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)
- Create "Personal Access Token" (PAT) with following permissions
  - Agent Pools: Read & manage
- Create a file "secrets.env" with the following content

```
AZP_URL=https://dev.azure.com/tzather
AZP_AGENT_NAME=dockeragent-dev-[NAME_OF_MACHINE]
```

# Useful Docker commends

```
docker image ls && docker container ls
docker image ls --all && docker container ls --all
docker container prune --force && docker image prune --all --force
```
