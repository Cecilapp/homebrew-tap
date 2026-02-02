class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.0/cecil.phar"
  sha256 "6e61d8fedd773b09f85b7d4d93a2948c83b3a792b9898c67cec7574392006c45"

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
