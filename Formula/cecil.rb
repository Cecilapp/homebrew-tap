class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.100.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.100.0/cecil.phar"
  sha256 "47dccc6ac8f58dff90b7174a5089a4054d04ebe91f68eac2c5f075852f42897e"

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
