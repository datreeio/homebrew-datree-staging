# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.38-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.38-rc/datree-cli_0.15.38-rc_Darwin_x86_64.zip"
    sha256 "4935246e2460dc836cc6be614e3b745282e8040b0a1f9ccbff9502b2de38945b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.38-rc/datree-cli_0.15.38-rc_Darwin_arm64.zip"
    sha256 "e83bd2cccc787b12aa1d0a5fa8f0569e261ae56a017fb96617c9e9790c64f2b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.38-rc/datree-cli_0.15.38-rc_Linux_x86_64.zip"
    sha256 "86a909b375f3266abd62a7998662f27b2ae2bafcce63c09712c78a8f98348ac0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.38-rc/datree-cli_0.15.38-rc_Linux_arm64.zip"
    sha256 "0867f8c4bf188d19482ff35297d473029f356ab46dbb13e5170007fb25aa95e3"
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
      tput init
    EOS
  end
end
