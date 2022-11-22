class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.27.7/cecil.phar"
  version "7.27.7"
  sha256 "4e9a540da895c8c11df3bc6e5af77118dc74d49723e19a0509ae9078b5ce5222"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
