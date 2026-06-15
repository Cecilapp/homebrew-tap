class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.107.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.107.0/cecil.phar"
  sha256 "6eba2c0963b335435a305bc94e09ca7a8f79876effa95f4793d06bf586ff6f29"

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
