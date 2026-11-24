class Localci < Formula
  desc "localci command line tool"
  homepage "https://github.com/nesolva/localci"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nesolva/localci/releases/download/v0.1.0/localci_0.1.0_darwin_arm64.tar.gz"
      sha256 "1896ba422333b9d494b2d03ed9deeb118c92714ab4b5b00c0a21c863e4272233"
    end
    on_intel do
      url "https://github.com/nesolva/localci/releases/download/v0.1.0/localci_0.1.0_darwin_amd64.tar.gz"
      sha256 "d2ccee7ef76494d8284584e20190bc03bfc06801ea5951b3150b590436866c08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nesolva/localci/releases/download/v0.1.0/localci_0.1.0_linux_arm64.tar.gz"
      sha256 "eecf65e29733a7345979f6b545492ad188a57a821215f986e2a2c3e26b5e0947"
    end
    on_intel do
      url "https://github.com/nesolva/localci/releases/download/v0.1.0/localci_0.1.0_linux_amd64.tar.gz"
      sha256 "3d9d970161783e0ddcf4fe61954df42844f749157a73ef1cef5c087f0fd19e35"
    end
  end

  def install
    bin.install "localci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localci version")
  end
end
