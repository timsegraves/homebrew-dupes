require 'formula'

# "File" is a reserved class name
class FileFormula < Formula
  homepage 'http://www.darwinsys.com/file/'
  url 'ftp://ftp.astron.com/pub/file/file-5.11.tar.gz'
  sha1 'df8ffe8759ec8cd85a98dc98e858563ea2555f64'

  head 'https://github.com/glensc/file.git'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-fsect-man5"
    system "make install"
  end
end

