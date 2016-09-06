# Dependencies
```
sudo yum -y install rpmdevtools && rpmdev-setuptree

sudo yum -y install readline libyaml libyaml-devel readline-devel ncurses ncurses-devel gdbm gdbm-devel glibc-devel tcl-devel gcc unzip openssl-devel db4-devel byacc make libffi-devel
```

# Build
```
rpmbuild –ba ./SPECS/ruby-${rubyver}.spec
```
The rpm file will be generated to ./RPMS

# Notes
The rpm package may not be recognised by system and it may be replaced by older version while doing yum update (or apt-get update).

Patch version (e.g. p233) has been removed from the build.