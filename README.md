# Ansible Role: auditbeat

Ansible Role to install and configure Elastic Auditbeat for Ubuntu.


## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`).
You can overload the variables by creating a dictionary called "auditbeat", ex:

    auditbeat:
      version: 5.6.2

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.auditbeat

## License

MIT / BSD

## Author Information

This role was created in 2018 by [Apollo Clark](https://www.apolloclark.com/)
