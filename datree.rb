# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.18-rc/datree-cli_0.15.18-rc_Darwin_x86_64.zip"
    sha256 "455ad929e04d3a6ca39cfaa30906e1c106acef78b8aacad0db13985f621c43f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.18-rc/datree-cli_0.15.18-rc_Darwin_arm64.zip"
    sha256 "f58adbea36a014b38ddacb2a8f4563d7d81bdf849a03d457cba1262f3e5d50b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.18-rc/datree-cli_0.15.18-rc_Linux_x86_64.zip"
    sha256 "ea793e735164adf50b54340dbc6101e038eb842a5cfe9fcb3f3cca77d448b0fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.18-rc/datree-cli_0.15.18-rc_Linux_arm64.zip"
    sha256 "531ae9a4d562a6b196a2b78baf9106fa6ec55d0d776b946a4e0cff21987563c7"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
