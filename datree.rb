# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.0-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.0-rc/datree-cli_0.15.0-rc_Darwin_x86_64.zip"
    sha256 "c137d02183a51cd82c29b30d8212a6ee6e13f9fdae09e37af9146c749257c162"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.0-rc/datree-cli_0.15.0-rc_Linux_x86_64.zip"
    sha256 "1f103958969df25dffb2b03c40bd4608f7c8cf40b4c056ced1319a21a7be65b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.0-rc/datree-cli_0.15.0-rc_Linux_arm64.zip"
    sha256 "892d5d9ddb0765a251705dad7c2ed47bcccfc02ca49a31f2a2a7610a5d071e08"
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
