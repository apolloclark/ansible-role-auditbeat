# Ansible Role: auditbeat

Ansible Role to install and configure Elastic auditbeat for Ubuntu.


## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`).
You can overload the variables by creating a dictionary called "auditbeat", ex:

    auditbeat:
      version: 6.6.2

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.auditbeat

## Testing

```sh
# install dependencies, setup pipenv
pip install --user pipenv
pipenv install -r test-requirements.txt --python 2.7

# run all test scenarios
pipenv run molecule test --all

# run a single test scenario
pipenv run molecule test --scenario=name [default | agent | change-log-path]

# build a specific environment, for manual debugging
export DOCKER_IMAGE_BASE=idealista/jdk:8u171-jessie-openjdk-headless
export DOCKER_IMAGE_BASE=idealista/jdk:8u212-stretch-openjdk-headless
export DOCKER_IMAGE_BASE=idealista/jdk:8u191-xenial-openjdk-headless
export DOCKER_IMAGE_BASE=idealista/jdk:8u191-bionic-openjdk-headless
export DOCKER_IMAGE_BASE=idealista/jdk:11.0.1-bionic-openjdk-headless
export DOCKER_IMAGE_BASE=idealista/jdk:11-centos-openjdk-headless
pipenv run molecule verify
docker exec -it tomcat /bin/bash
    cat /etc/os-release
    ps aux
    systemctl status tomcat
    apt-get install -y net-tools curl nano
    ss -tlu | netstat -tunlp
    curl localhost:8080
    cd /opt/tomcat/logs
```

## License

MIT / BSD

## Author Information

This role was created in 2017 by [Apollo Clark](https://www.apolloclark.com/)
