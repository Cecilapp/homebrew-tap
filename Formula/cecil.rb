class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.5/cecil.phar"
  sha256 "786449c7008a63e76530cece9b68a90b478fe8f20d9263f0086ad60169828016"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
