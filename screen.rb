require 'formula'

class Screen < Formula
  homepage 'http://www.gnu.org/software/screen'
  url 'http://ftpmirror.gnu.org/screen/screen-4.0.3.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz'
  version '4.00.03'
  sha1 '7bc6e2f0959ffaae6f52d698c26c774e7dec3545'

  head 'git://git.savannah.gnu.org/screen.git', :branch => 'master'

  depends_on :autoconf

  def patches
    "http://trac.macports.org/raw-attachment/ticket/20862/screen-4.0.3-snowleopard.patch"
  end unless build.head?

  def install
    if build.head?
      cd 'src' do
        system "autoconf"
        system "autoheader"
      end
    end

    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--infodir=#{info}",
                          "--enable-colors256"
    system "make"
    system "make install"
  end
end
