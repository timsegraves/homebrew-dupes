require 'formula'

class Lsof < Formula
  homepage 'http://people.freebsd.org/~abe/'
  url 'ftp://sunsite.ualberta.ca/pub/Mirror/lsof/lsof_4.86.tar.bz2'
  sha1 '53c124fe6fddbc96f4724abec16572d9239f913e'

  def install
    system "tar xf lsof_4.86_src.tar"
    cd "lsof_4.86_src" do
      mv "00README", "../README"
      system "./Configure -n darwin"
      system "make"
      bin.install "lsof"
    end
  end
end
