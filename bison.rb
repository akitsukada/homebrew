
require 'formula'

class Bison < Formula
  url 'http://ftp.gnu.org/gnu/bison/bison-2.5.tar.gz'
  homepage 'http://www.gnu.org/s/bison/'
  md5 '687e1dcd29452789d34eaeea4c25abe4'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
