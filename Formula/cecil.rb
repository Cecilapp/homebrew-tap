class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.120.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.120.0/cecil.phar"
  sha256 "b5a5ee8825e55405cf79a3d0655aa3d4d76d4a5d57eb748b4510f6e61a154b51"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
