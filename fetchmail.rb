require 'formula'

class Fetchmail < Formula
  homepage 'http://www.fetchmail.info/'
  url 'http://downloads.sourceforge.net/project/fetchmail/branch_6.3/fetchmail-6.3.22.tar.xz'
  sha1 '3bb755010dbe568d53840e22d8e87d8d5db25b19'

  depends_on 'xz' => :build

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
