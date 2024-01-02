class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.5/cecil.phar"
  version "8.1.5"
  sha256 "4ae3c3f78e2e8738f3dda750a553362285a8e3484a1c20f4ec2c44e8ce5d1506"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
