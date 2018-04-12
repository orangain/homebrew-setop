class Setop < Formula
  desc "Apply set operations like intersection to text inputs"
  homepage "https://github.com/phisigma/setop"
  url "https://github.com/phisigma/setop/archive/v0.1.tar.gz"
  sha256 "ad5138e635607abaad871c1c068de3684113f7187dccf8652a5c66cd2eca8d07"
  depends_on "help2man" => :build

  def install
    system "make", "install", "BIN=#{bin}", "HELP=#{man1}"
  end

  test do
    assert_equal "setop #{version}\n", shell_output("#{bin}/setop --version")
  end
end
