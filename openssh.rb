require 'formula'

class Openssh < Formula
  homepage 'http://www.openssh.com/'
  url 'http://ftp5.usa.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.0p1.tar.gz'
  version '6.0p1'
  sha1 'f691e53ef83417031a2854b8b1b661c9c08e4422'

  def install
    system "./configure", "--with-libedit", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
