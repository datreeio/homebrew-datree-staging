# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.40-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.40-rc/datree-cli_1.6.40-rc_Darwin_x86_64.zip"
    sha256 "0223772d133d336d703645b65939d6572131c0762e2367147046cd907884a71e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.40-rc/datree-cli_1.6.40-rc_Darwin_arm64.zip"
    sha256 "b8277bb5c59dd1c06f1afd76487f0e7d5453d2b55103f366a146bdeb4702c76b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.40-rc/datree-cli_1.6.40-rc_Linux_x86_64.zip"
    sha256 "afd755dc284bd5b110541c495b4d95d4b8599db40e125928d500869d38342374"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.40-rc/datree-cli_1.6.40-rc_Linux_arm64.zip"
    sha256 "617d8f0b649c93035e12954b2ae1d579d465961d183c0c746483d50b6263c780"
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
    EOS
  end
end
