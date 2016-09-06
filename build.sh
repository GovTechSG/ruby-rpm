
mkdir -p ~/rpmbuild/SOURCES
wget ftp://ftp.ruby-lang.org/pub/ruby/${rubymajorver}/ruby-${rubyver}.tar.gz -O ~/rpmbuild/SOURCES/ruby-${rubyver}.tar.gz
rpmbuild -ba ./SPECS/ruby-${rubyver}.spec
