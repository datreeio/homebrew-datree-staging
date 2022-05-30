# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.35-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.35-rc/datree-cli_1.4.35-rc_Darwin_x86_64.zip"
    sha256 "7275513bb0a3e93cbb79d7d64e3c3da0787122be42fe91497c8abc5f3044b2e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.35-rc/datree-cli_1.4.35-rc_Darwin_arm64.zip"
    sha256 "72446a651ad00ffd5e8d1f5814041cf3f16b265616b61bb977d1f20faedfe851"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.35-rc/datree-cli_1.4.35-rc_Linux_x86_64.zip"
    sha256 "8f8b618452155d5cdcc90e1dabd0e1e1cb72d4c4b261b98b78b3b699239492bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.35-rc/datree-cli_1.4.35-rc_Linux_arm64.zip"
    sha256 "ba735434fb7d05e9ed11c0f99500fc34eb6cc34ea87ce18098dbdf7d13f2f1f1"
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
