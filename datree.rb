# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.11-rc/datree-cli_1.1.11-rc_Darwin_x86_64.zip"
    sha256 "5541d368a80ebc66bc1f5d92616d96fc5639414dd9a51be6a206a803cf440eb6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.11-rc/datree-cli_1.1.11-rc_Darwin_arm64.zip"
    sha256 "3e8b18d17726c8114022214c7e5f7122cf430aa81614d50a86dc15a931a0eb6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.11-rc/datree-cli_1.1.11-rc_Linux_x86_64.zip"
    sha256 "4ba6458f0b7b9d50e360f701ec508ee129401184961731ba4ed9de66e2896232"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.11-rc/datree-cli_1.1.11-rc_Linux_arm64.zip"
    sha256 "0ccb34e21136ed82e734b307bb5b02b621a430374541d46816172fb21dfef23a"
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
