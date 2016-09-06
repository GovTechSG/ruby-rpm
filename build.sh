

wget ftp://ftp.ruby-lang.org/pub/ruby/${rubymajorver}/ruby-${rubyver}.tar.gz -O ./SOURCES/ruby-${rubyver}.tar.gz
QA_RPATHS=$[ 0x0001|0x0002|0x0010 ] rpmbuild --define "_topdir `pwd`" -ba ./SPECS/ruby-${rubyver}.spec
