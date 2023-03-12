class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.4/cecil.phar"
  version "7.32.4"
  sha256 "87d34643eacc013c3755ee211ce00fc87ddb0250502911446bb9cac2328131ad"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
