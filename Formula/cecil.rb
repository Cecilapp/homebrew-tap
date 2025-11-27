class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.73.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.73.0/cecil.phar"
  sha256 "162ccf60a3d6f7111ee267bf1cc32f06ea9c076a8c4b301f5aedff805891b71e"

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
