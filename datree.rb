# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.47-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.47-rc/datree-cli_0.14.47-rc_Darwin_x86_64.zip"
    sha256 "165181cef3ef3405b8465ffb335e27039985bb0a920027e92669e77b74c25b35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.47-rc/datree-cli_0.14.47-rc_Linux_x86_64.zip"
    sha256 "49db293ae1d8cce3fe0b3d9f9fe7fd91e90e9de2b6ce0d6b0d7bba9fb06b606f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.47-rc/datree-cli_0.14.47-rc_Linux_arm64.zip"
    sha256 "59bb4aa5c4f38199fad75d1868473c0d4ae9f5bb0ec81818cfb3742cd047b699"
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
