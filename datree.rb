# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.30-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.30-rc/datree-cli_1.6.30-rc_Darwin_x86_64.zip"
    sha256 "a10b5aa0ac52443c7282aa6e7483470306916c4367ab56515bd6761ee95dc97b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.30-rc/datree-cli_1.6.30-rc_Darwin_arm64.zip"
    sha256 "f040e58d7dd4d479ffb802f0ba3a3092aaf7b0586612ef99080d39eba6ec4448"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.30-rc/datree-cli_1.6.30-rc_Linux_x86_64.zip"
    sha256 "7b8ba1254445c051a4b957a9cdddef9bef50a9283c740379f76460ef7f2f4fd5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.30-rc/datree-cli_1.6.30-rc_Linux_arm64.zip"
    sha256 "71b259139d83e77f6b3dc61a885fe3667918449f6c761704e1a644d1cc3f1853"
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
