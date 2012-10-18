require 'formula'

class M4 < Formula
  homepage 'http://www.gnu.org/software/m4'
  url 'http://ftpmirror.gnu.org/m4/m4-1.4.16.tar.bz2'
  mirror 'http://ftp.gnu.org/gnu/m4/m4-1.4.16.tar.bz2'
  sha1 '0390c77780ab4cd65b07fe4e2d23e4e39769f967'

  keg_only :provided_by_osx

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
