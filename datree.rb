# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.14-rc/datree-cli_1.9.14-rc_Darwin_x86_64.zip"
    sha256 "267b8fcd96f9209b9882f5f4fedfc6d927cf1d92984d9d1d0f2c0b6d1de76f8f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.14-rc/datree-cli_1.9.14-rc_Darwin_arm64.zip"
    sha256 "bf2f8755068dc64e7104412098cbdf76ea653a7018ef403a9f1589165c6cceec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.14-rc/datree-cli_1.9.14-rc_Linux_x86_64.zip"
    sha256 "262ab17310428bd3ad7a746cf5689c1b09dac6d8e2bc15dde379d0a15d2f993d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.14-rc/datree-cli_1.9.14-rc_Linux_arm64.zip"
    sha256 "224f7e852e20534fb4d2675f15ac5faf6f8be4ba5bdf88d75cb4a7ab030a3cb4"
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
