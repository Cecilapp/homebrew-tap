class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.93.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.93.1/cecil.phar"
  sha256 "a03154dcc912b0e496d5009003255d75daed98cbc78d66dfb85145be38704a33"

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
