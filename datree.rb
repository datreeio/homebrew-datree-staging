# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.4-rc/datree-cli_1.3.4-rc_Darwin_x86_64.zip"
    sha256 "d3a4e30a17f85b70e5729d0a23a51484c7e0cf553ff9b8a63b87441ea296c208"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.4-rc/datree-cli_1.3.4-rc_Darwin_arm64.zip"
    sha256 "dcd4cb4729b8452e1e832e8407d0d68926a3d6d41781805b2c0d4ee361a72da3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.4-rc/datree-cli_1.3.4-rc_Linux_x86_64.zip"
    sha256 "c0b223d7ad832c00be44b1e64abf0335b5f9fb2b936139487830d4c1cf74d5ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.4-rc/datree-cli_1.3.4-rc_Linux_arm64.zip"
    sha256 "84702618f00198aeff29e337d00cc1d3615572099a3c1693eb42f710cba0e0da"
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
