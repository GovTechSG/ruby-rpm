# Dependencies
```
sudo yum -y install rpmdevtools && rpmdev-setuptree

sudo yum -y install readline libyaml libyaml-devel readline-devel ncurses ncurses-devel gdbm gdbm-devel glibc-devel tcl-devel gcc unzip openssl-devel db4-devel byacc make libffi-devel
```

# Build
./build.sh

```
# Download the tarball
wget ftp://ftp.ruby-lang.org/pub/ruby/${rubymajorver}/ruby-${rubyver}.tar.gz -O ./SOURCES/ruby-${rubyver}.tar.gz
```
```
# It's time to build
# The 2 bitflag assigned QA_RPATHS ignore the standard, invalid and empty RPATHs 
QA_RPATHS=$[ 0x0001|0x0010 ] rpmbuild -ba ./SPECS/ruby-${rubyver}.spec

# change rpmbuild working directory to current directory
rpmbuild --define "_topdir `pwd`" -ba ./SPECS/ruby-${rubyver}.spec
```
The rpm file will be generated to ./RPMS

# Installation
```
# installation path /opt/install/rubies/
rpm -ivh <the-name>.rpm
```

# Notes
The rpm package may not be recognised by system and it may be replaced by older version while doing yum update (or apt-get update).

Patch version (e.g. p233) has been removed from the build.