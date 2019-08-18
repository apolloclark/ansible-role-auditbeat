# Ansible Role: auditbeat

[![Build Status](https://travis-ci.org/apolloclark/ansible-role-auditbeat.svg?branch=master)](https://travis-ci.org/apolloclark/ansible-role-auditbeat)

Ansible Role to install and configure Elastic auditbeat for Ubuntu 18.04 Bionic, Ubuntu 16.04 Xenial, Debian 9 Stretch,
Debian 8 Jessie, Centos 7.


## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `vars/main-7.2.yml`).
You can overload the variables by creating a dictionary called "auditbeat", ex:

    auditbeat:
      version: 7.2.0

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.auditbeat

## Testing

```sh
# run all tests, against all supported OSes
./travis_tests.sh



# install dependencies, setup pipenv
pip install --user pipenv
pipenv install -r test-requirements.txt --python 2.7

# run all test scenarios, defaults to Ubuntu 18.04 Bionic
pipenv run molecule test --all

# run a single test scenario
pipenv run molecule test --scenario=[default]

# build a specific environment, for manual debugging
pipenv run molecule converge
docker exec -it auditbeat-ubuntu_bionic /bin/bash
    cat /etc/os-release
    ps aux
    systemctl status auditbeat
    apt-get install -y net-tools curl nano
    ss -tlu | netstat -tunlp
    curl localhost:8080
    cd /var/log/auditbeat
```

## License

MIT / BSD

## Author Information

This role was created in 2017 by [Apollo Clark](https://www.apolloclark.com/)
