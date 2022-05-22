# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.28-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.28-rc/datree-cli_1.4.28-rc_Darwin_x86_64.zip"
    sha256 "fd6f90f3d97e213074a8ded2518bfda4412e52ea2cd2cd6669b8a65440b85601"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.28-rc/datree-cli_1.4.28-rc_Darwin_arm64.zip"
    sha256 "4dec1d5b27ed1b50cc3d8bc5152d5e48b11415342d524327aebb90a886163581"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.28-rc/datree-cli_1.4.28-rc_Linux_x86_64.zip"
    sha256 "5df7717655bceafb38663473fd98b85c09a3a37ce1a37c2f3bc0474937261912"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.28-rc/datree-cli_1.4.28-rc_Linux_arm64.zip"
    sha256 "3a0b6a06faa862eabe0815e9606e380c026ac81a3150110e39994af7111bd33d"
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
