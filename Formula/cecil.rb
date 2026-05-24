class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.5/cecil.phar"
  sha256 "532cc471dc3376c10f13d4d4c78ffd4439b94e1c81b3998fdc3ce61bbaeaa574"

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
