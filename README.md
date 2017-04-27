## Before installation

> Make sure you can run sudo command without password question

Before installation please generate a ssh key by running the following coomand:
```
ssh-keygen
```

And then copy the public key that was generated and add it to your ssh keys list in gitlab.
```
cat ~/.ssh/id_rsa.pub
```

## Installation

### Run pre installation script (only first time)
```
./setup.sh
```

### Run ansible playbook to install all needed applications
```
cd ansible
ansible-playbook -i env/local/main.ini setup.yml
```

> Vagrantfile is for testing purposes.

---

Basic roles:

| Role        | Details                            |
| ----------- | ---------------------------------- |
| `apt`       | Install application with `apt-get` |
| `apt-key`   | Install linux signing key          |
| `python`    | Install python dependencies        |
