class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.22"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.22/cecil.phar"
  sha256 "dd8106634bdf3a154b98994f2ca78fc4495b226886ff20b46a354439c981ec33"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
