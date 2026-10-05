class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.7.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.7.4/cecil.phar"
  sha256 "c0ed98e2b64841390e7ed0f3ef6d84552b1c7ad179af2738aa9d759458dc2682"

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
