require 'formula'

class Autoconf < Formula
  url 'http://ftp.jaist.ac.jp/pub/GNU/libtool/libtool-2.4.tar.gz'
  homepage 'http://www.gnu.org/software/libtool/'
  md5 'b32b04148ecdd7344abc6fe8bd1bb021'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
