class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.30.3/cecil.phar"
  version "7.30.3"
  sha256 "c921d008c1e249a379cf99b55a23d9d1f999056c8fb75d8b656608263335f7e2"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
