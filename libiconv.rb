require 'formula'

class Libiconv < Formula
  homepage 'http://www.gnu.org/software/libiconv/'
  url 'http://ftpmirror.gnu.org/libiconv/libiconv-1.14.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/libiconv/libiconv-1.14.tar.gz'
  sha1 'be7d67e50d72ff067b2c0291311bc283add36965'

  keg_only :provided_by_osx

  option :universal

  def patches
    { :p1 => [
      'https://trac.macports.org/export/89276/trunk/dports/textproc/libiconv/files/patch-Makefile.devel',
      'https://trac.macports.org/export/89276/trunk/dports/textproc/libiconv/files/patch-utf8mac.diff',
      DATA
    ]}
  end

  def install
    ENV.universal_binary if build.universal?
    ENV.j1
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-extra-encodings"
    system "make", "-f", "Makefile.devel", "CFLAGS=#{ENV.cflags}", "CC=#{ENV.cc}"
    system "make install"
  end
end


__END__
diff --git a/lib/flags.h b/lib/flags.h
index d7cda21..4cabcac 100644
--- a/lib/flags.h
+++ b/lib/flags.h
@@ -14,6 +14,7 @@
 
 #define ei_ascii_oflags (0)
 #define ei_utf8_oflags (HAVE_ACCENTS | HAVE_QUOTATION_MARKS | HAVE_HANGUL_JAMO)
+#define ei_utf8mac_oflags (HAVE_ACCENTS | HAVE_QUOTATION_MARKS | HAVE_HANGUL_JAMO)
 #define ei_ucs2_oflags (HAVE_ACCENTS | HAVE_QUOTATION_MARKS | HAVE_HANGUL_JAMO)
 #define ei_ucs2be_oflags (HAVE_ACCENTS | HAVE_QUOTATION_MARKS | HAVE_HANGUL_JAMO)
 #define ei_ucs2le_oflags (HAVE_ACCENTS | HAVE_QUOTATION_MARKS | HAVE_HANGUL_JAMO)
