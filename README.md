Land Registry Vagrant Training Environment
=======================

This is a local virtual environment that contains the following:

* Jenkins running on port 8080
* PostgreSQL running on port 5432
* A Test app running on port 4567
* A Json Get Register app running on port 5000

### Prerequisite

* Vagrant (https://www.vagrantup.com)
* Virtual Box (https://www.virtualbox.org)
* Git (http://git-scm.com)

### Step 1

From the command line, Clone the repo:

```
git clone https://github.com/LR-Training/training-environment.git
```

### Step 2

From the command line, type:

```
cd training-environment
vagrant up
```

### To Update

From the command line, type:

```
cd training-environment
git pull
vagrant reload
```

### Available Web Sites

The following services are now available:
* Jenkins ([http://localhost:8080](http://localhost:8080))
* Test App ([http://localhost:4567](http://localhost:4567))
* Get Register App ([http://localhost:5000](http://localhost:5000))

### Available Tests

The following tests can be found in the tests folder:

* Example 1 - Create a user on the Test App
* Example 2 - Create a user and then use it to login to the Test App
