class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.2/cecil.phar"
  version "7.36.2"
  sha256 "1f30b136515b0846c0eff3605419050642f4e24f35e2e5a2b63d1684b83d20cd"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
