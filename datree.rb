# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.6-rc/datree-cli_0.16.6-rc_Darwin_x86_64.zip"
    sha256 "c9c2a95b2e71c722aa4b040559ee0416d5501bdf867463aa13a460a12855b3b7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.6-rc/datree-cli_0.16.6-rc_Darwin_arm64.zip"
    sha256 "f67f215acd5abbee5abadea78f01416daac175fcd4c21f5f7db140658bfff4cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.6-rc/datree-cli_0.16.6-rc_Linux_x86_64.zip"
    sha256 "7986fa8b955fc4c72bdc651f6998d195a47bfa18aa22c54c8682702b0433b029"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.6-rc/datree-cli_0.16.6-rc_Linux_arm64.zip"
    sha256 "5581def4ce8747fc071457d67c823b0dd13c9e21a3309db14a680e1a8f9a0f74"
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
