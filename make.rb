require 'formula'

class Make < Formula
  homepage 'http://www.gnu.org/software/make/'
  url 'http://ftpmirror.gnu.org/make/make-3.82.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/make/make-3.82.tar.gz'
  sha1 '92d1b87a30d1c9482e52fb4a68e8a355e7946331'

  keg_only :provided_by_osx

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
