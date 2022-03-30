# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.7-rc/datree-cli_1.1.7-rc_Darwin_x86_64.zip"
    sha256 "0dc5f0f9559c5c2bcd46bc06733cc954d269a61e4d6265ffbb81cbd456c2fc28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.7-rc/datree-cli_1.1.7-rc_Darwin_arm64.zip"
    sha256 "3d0afea164c6bcc93603dd5b35cc4c2a54eebfb1b9263da0a3c28a4edef1d421"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.7-rc/datree-cli_1.1.7-rc_Linux_x86_64.zip"
    sha256 "c94ef5255e1262bf2e480c143fb3eeee656faba1a275c3954219f697a223500a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.7-rc/datree-cli_1.1.7-rc_Linux_arm64.zip"
    sha256 "e8b27038647b41b88a54221f9476e461ad9edf130aae65869352aac449cf8ad4"
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
