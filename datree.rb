# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.0-rc/datree-cli_0.16.0-rc_Darwin_x86_64.zip"
    sha256 "c93a0b0e5db1f354693345c714a81e59b537b008b8fa90c0967b22d59becc9dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.0-rc/datree-cli_0.16.0-rc_Darwin_arm64.zip"
    sha256 "6ebeba6019072860c93cb5106d8aa99bac07ae4e810674581fa85d386a2b7b10"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.0-rc/datree-cli_0.16.0-rc_Linux_x86_64.zip"
    sha256 "0814008feaf412e6f75a8467a19daeea871c21d055f8b9cf629a5d9f0e68296d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.0-rc/datree-cli_0.16.0-rc_Linux_arm64.zip"
    sha256 "95a18de9465e59afd499f63793ff3f31aadf4a9ef9890f0095768a9a6d745c89"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
      tput init
    EOS
  end
end
