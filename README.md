# [![Docker Repository on Quay](https://quay.io/repository/luet/concourse-resource/status "Docker Repository on Quay")](https://quay.io/repository/luet/concourse-resource) Luet Concourse Resource

A Concourse CI resource for luet repositories
It can check new versions of a luet repository

## Source Configuration

* `url`: URL of the luet repository

## Example

```
resource_types:
- name: luet-resource
  type: docker-image
  source:
      repository: quay.io/luet/concourse-resource
      tag: latest

resources:
- name: latest-luet-repo
  type: luet-resource
  source:
    url: https://get....

jobs:
- name: qa
  plan:
  - get: latest-luet-repo
    trigger: true
  - task: work
    config:
      run:
        ....
```

## Behaviour

### `check`: Check for new revisions

Checks the remote server for versions.

### `in/out`: Not implemented
