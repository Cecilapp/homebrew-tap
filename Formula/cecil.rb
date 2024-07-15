class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.13.1/cecil.phar"
  version "8.13.1"
  sha256 "664a9bb41a786d5c18b6c61aab88c62e3a57b370c6a2af80d454e208ca569cf0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
