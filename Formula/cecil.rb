class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.0/cecil.phar"
  version "7.36.0"
  sha256 "a6aae5599176c921f4caadc505a568ec5ff3590fd96dfe57691c29ef6e3a8f51"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
