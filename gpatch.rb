require 'formula'

class Gpatch < Formula
  homepage 'http://savannah.gnu.org/projects/patch/'
  url 'http://ftpmirror.gnu.org/patch/patch-2.7.tar.bz2'
  mirror 'http://ftp.gnu.org/gnu/patch/patch-2.7.tar.bz2'
  sha1 '3a08bb3a6f3a5f3a03cbb3bfa052528a1a259ec8'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
