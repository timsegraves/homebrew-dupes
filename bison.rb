require 'formula'

class Bison < Formula
  homepage 'http://www.gnu.org/software/bison/'
  url 'http://ftpmirror.gnu.org/bison/bison-2.6.2.tar.xz'
  mirror 'http://ftp.gnu.org/gnu/bison/bison-2.6.2.tar.xz'
  sha1 'eb0ddc583954d435d95ec6c42ba168dedc09b9b7'

  depends_on 'xz' => :build

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
