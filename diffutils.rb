require 'formula'

class Diffutils < Formula
  homepage 'http://www.gnu.org/s/diffutils/'
  url 'http://ftpmirror.gnu.org/diffutils/diffutils-3.2.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/diffutils/diffutils-3.2.tar.gz'
  sha1 'e145a54a8ff67fa6272de48ec0e2f4897f05dce7'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
