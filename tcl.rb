require 'formula'

class Tcl < Formula
  homepage 'http://www.tcl.tk/'
  url 'http://sourceforge.net/projects/tcl/files/Tcl/8.5.9/tcl8.5.9-src.tar.gz'
  version '8.5.9'
  sha1 'ae87c5e58ba20760d9bc77117d219bbf1b6a5557'

  option 'enable-threads', 'Build with multithreading support'

  def install
    args = ["--prefix=#{prefix}", "--mandir=#{man}"]
    args << "--enable-threads" if build.include? "enable-threads"
    args << "--enable-64bit" if MacOS.prefer_64_bit?

    cd 'unix' do
      system "./configure", *args
      system "make"
      system "make test"
      system "make install"
      system "make install-private-headers"
    end
  end
end
