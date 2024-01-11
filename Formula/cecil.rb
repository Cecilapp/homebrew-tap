class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.2.0/cecil.phar"
  version "8.2.0"
  sha256 "38519bd703522dac405b7f056a4f9d77e0981409554e407ca4c2c9ca49758e94"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
