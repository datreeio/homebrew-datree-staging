# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.2-rc/datree-cli_1.4.2-rc_Darwin_x86_64.zip"
    sha256 "0024f2021fdcac40fb61bb93b2a2edd962ec5a32df0c4e57a7c1cc1968452133"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.2-rc/datree-cli_1.4.2-rc_Darwin_arm64.zip"
    sha256 "57ca3422175f005988e5ab32d6906faa4e6c20a9a7db9d4069b21aefef21386e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.2-rc/datree-cli_1.4.2-rc_Linux_x86_64.zip"
    sha256 "cbd0f6f00fdee3e2ce7a3d1443ccf31b6950b62a2fd0b14e8cb2875c5054e50b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.2-rc/datree-cli_1.4.2-rc_Linux_arm64.zip"
    sha256 "7063819e2712895466067bbf875311e56b6d47eb3bc468d35db64ad804ea74a6"
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
