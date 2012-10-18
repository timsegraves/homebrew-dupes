require 'formula'

class Awk < Formula
  homepage 'http://www.cs.princeton.edu/~bwk/btl.mirror/'
  url 'http://www.cs.princeton.edu/~bwk/btl.mirror/awk.tar.gz'
  version '20110810'
  sha1 '333d93c746aa16e33c5c4aaf505009914cea4770'

  def install
    ENV.O3 # Docs recommend higher optimization
    system "make", "CC=#{ENV.cc}", "CFLAGS=#{ENV.cflags}"
    bin.install 'a.out' => 'awk'
    man1.install 'awk.1'
  end
end
