require 'formula'

class Libarchive < Formula
  homepage 'http://libarchive.github.com/'
  url 'https://github.com/downloads/libarchive/libarchive/libarchive-3.0.4.tar.gz'
  sha1 '81bf817aa512ad67af583c7a2dab79743e418899'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
