# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.7-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.7-staging/datree-cli_0.13.7-staging_Darwin_x86_64.zip"
    sha256 "24dd6c2a855d0f80ffbe2237191ced66bc60b499684738e845bc894048ef7201"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.7-staging/datree-cli_0.13.7-staging_Linux_x86_64.zip"
    sha256 "2e4c8baccb40a397b6ebfd1c6f1c9f0005b44420018d7bf1d05bf082446323d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.7-staging/datree-cli_0.13.7-staging_Linux_arm64.zip"
    sha256 "475189d19ef4a52368d1b55f74c90fa18bfd5b34d538dcd143dad8265b1d4ce4"
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
