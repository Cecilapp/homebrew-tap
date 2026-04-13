class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.89.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.89.0/cecil.phar"
  sha256 "300f1b4a3e529c7e613bf6c8d64baee402b84220f6109f9871300579140e134a"

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
