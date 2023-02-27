# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.30-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.30-rc/datree-cli_1.8.30-rc_Darwin_x86_64.zip"
    sha256 "249ebdb404f44182fc297756dbb3311ecd7c8c0ffffc2113b6222af6f273da5d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.30-rc/datree-cli_1.8.30-rc_Darwin_arm64.zip"
    sha256 "9a3cc7f7c11c42dee9182421d5891dbeda13e8510cbb5a1b7926e016e2e18a9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.30-rc/datree-cli_1.8.30-rc_Linux_x86_64.zip"
    sha256 "9d3e9721fb34b2a6f0d32bc335bdb083ade2a16152e3201e64240da7e1deb6f0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.30-rc/datree-cli_1.8.30-rc_Linux_arm64.zip"
    sha256 "31afa81c14f7d1b54abe6175ee1531aabc7e0bbb6d41f51cc994812800afca1f"
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
