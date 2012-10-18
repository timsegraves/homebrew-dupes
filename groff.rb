require 'formula'

class Groff < Formula
  homepage 'http://www.gnu.org/software/groff/'
  url 'http://ftpmirror.gnu.org/groff/groff-1.21.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/groff/groff-1.21.tar.gz'
  sha1 'a513aca4a7530a6e63325addd6ba2d282c8f1608'

  def install
    system "./configure", "--prefix=#{prefix}", "--without-x"
    system "make" # Separate steps required
    system "make install"
  end
end
