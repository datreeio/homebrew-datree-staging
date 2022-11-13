# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.7.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.3-rc/datree-cli_1.7.3-rc_Darwin_x86_64.zip"
    sha256 "8185a3c053824c8ac69a17f4b35786f1ddf99018d90d08edfe8495666906c534"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.7.3-rc/datree-cli_1.7.3-rc_Darwin_arm64.zip"
    sha256 "59e5ad059ea0f3abe501ef3c90e65818d76109b4cf67ea35f87de300030e3db4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.7.3-rc/datree-cli_1.7.3-rc_Linux_x86_64.zip"
    sha256 "d50a912fac57f6fde48be8ebc3103f4ce702c3144879526de13bdac70e18a568"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.7.3-rc/datree-cli_1.7.3-rc_Linux_arm64.zip"
    sha256 "e41bec734728ee9cc7bdbe04a1e62950f780c316e7106bbb326f3a361a72e17a"
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
