class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.12.9/cecil.phar"
  version "8.12.9"
  sha256 "ab35eba515e2d70e501d169759b6c4331dd1b7fc1169d0cf392a5abbb4e5c0ed"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
