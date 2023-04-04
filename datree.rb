# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.61-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.61-rc/datree-cli_1.8.61-rc_Darwin_x86_64.zip"
    sha256 "0855804cecc5b8d2a893a40c237a1ca8977184716136e6fc47945699c5fe345a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.61-rc/datree-cli_1.8.61-rc_Darwin_arm64.zip"
    sha256 "bc0923c48161e4edfcc161fdcdac6dcaa001a2e5bf1eff7e0c9813726753b1f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.61-rc/datree-cli_1.8.61-rc_Linux_x86_64.zip"
    sha256 "a9857de09a630e104799f196545ddc7a4f864975f774715338bd634fab29d235"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.61-rc/datree-cli_1.8.61-rc_Linux_arm64.zip"
    sha256 "a85586a97a718ffde9f28e8ee90d09c384987605f3cbecc1a03c0a9458d5c751"
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
