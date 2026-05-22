class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.4/cecil.phar"
  sha256 "effbaf7ec2e9fcae57cf70730dc8394d338d74b4eec970f3514fd5bcbb1d9373"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
