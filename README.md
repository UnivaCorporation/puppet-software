# Installation

```
puppet module install <tarball_of_this_repo>
```

or unpack module directly to
`/etc/puppetlabs/code/environments/production/modules/software`.

## Usage

Create a YAML file named

```
/etc/puppetlabs/code/environments/production/data/tortuga-<CLUSTER-PROFILE>.yaml
```

where <CLUSTER-PROFILE> is the uid of the cluster profile obtained from
`navopsctl get clusterprofiles`. Follow the package resource parameters from

https://puppet.com/docs/puppet/5.5/types/package.html

to add contents like:

```
classes:
  - software

software::packages:
  vim: {}
  bash-completion: {}
  awscli:
    provider: pip3
```
