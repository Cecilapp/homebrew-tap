class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.6/cecil.phar"
  version "7.46.6"
  sha256 "17009bb51ffc9451bd38312bad8184bc885472d9d8c6cfd837483d18ac8f11d3"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
