# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.2-rc/datree-cli_1.6.2-rc_Darwin_x86_64.zip"
    sha256 "cb0f5b1e6f33928d1d18bcb2db7909585d3cedf0f2493e6520e92cf512947d0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.2-rc/datree-cli_1.6.2-rc_Darwin_arm64.zip"
    sha256 "f94314a64a25bb00793a99d90517d9b3eb5b00f11bd938be7e00e96f8c291be0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.2-rc/datree-cli_1.6.2-rc_Linux_x86_64.zip"
    sha256 "22b52c6a2cfbff4d27de0eb9b83ed76d4db0481dfd30b6de9da9ad519d077746"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.2-rc/datree-cli_1.6.2-rc_Linux_arm64.zip"
    sha256 "ff875dae2ab30f4ed8311fb015ad8a1b6477061253d50b6ab0f8232abb6d01eb"
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
