require 'formula'

class Flex < Formula
  url 'http://downloads.sourceforge.net/project/flex/flex/flex-2.5.35/flex-2.5.35.tar.gz'
  homepage 'http://flex.sourceforge.net/'
  md5 '201d3f38758d95436cbc64903386de0b'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
