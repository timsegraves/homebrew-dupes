require 'formula'

class Tcpdump < Formula
  homepage 'http://www.tcpdump.org/'
  url 'http://www.tcpdump.org/release/tcpdump-4.2.1.tar.gz'
  sha1 '56e3c86712b3ea7a3423026f4da5465bfcb2c051'

  head 'git://bpf.tcpdump.org/tcpdump'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-ipv6",
                          "--disable-smb",
                          "--disable-universal"
    system "make install"
  end
end
