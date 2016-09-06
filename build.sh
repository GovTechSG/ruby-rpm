

wget ftp://ftp.ruby-lang.org/pub/ruby/${rubymajorver}/ruby-${rubyver}.tar.gz -O ./SOURCES/ruby-${rubyver}.tar.gz
rpmbuild --define "_topdir `pwd`" -ba ./SPECS/ruby-${rubyver}.spec
