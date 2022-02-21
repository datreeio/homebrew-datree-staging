# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.21-rc/datree-cli_0.15.21-rc_Darwin_x86_64.zip"
    sha256 "dd78141c48527cfe601631438e3e1cf7cba5285da7fc74d393c2bb61975d6e45"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.21-rc/datree-cli_0.15.21-rc_Darwin_arm64.zip"
    sha256 "a27f3b793b1cfe3b910cd1d402c6afe4fced9250e4f3cc270a90a2cb3914ccda"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.21-rc/datree-cli_0.15.21-rc_Linux_x86_64.zip"
    sha256 "9bb0f331c528e376187f73da0f8b74aa157a19becc00922454d471a0776fc982"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.21-rc/datree-cli_0.15.21-rc_Linux_arm64.zip"
    sha256 "d8fba90c98214284ff3c661c52337b800964cf61dd37fca7d744b57fb81cedf8"
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
