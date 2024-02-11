class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.7.7/cecil.phar"
  version "8.7.7"
  sha256 "bc02e0f218fe0d706f228e8366ea5ec8d1707eb150a7af27aa570ee3880bb51c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
