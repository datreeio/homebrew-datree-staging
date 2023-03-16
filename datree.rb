# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.44-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.44-rc/datree-cli_1.8.44-rc_Darwin_x86_64.zip"
    sha256 "cf707bb25735125f5f57288f1659fbb12ec82747798ef82882ee826179f34825"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.44-rc/datree-cli_1.8.44-rc_Darwin_arm64.zip"
    sha256 "98306687fcbf645f4b7d4054fd536f438fbdc59341beb689608e0772507e059c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.44-rc/datree-cli_1.8.44-rc_Linux_x86_64.zip"
    sha256 "6a03d57bb6f0b5f752aa06048d7341459b24e2e6235b651d2dedec64c0edaa45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.44-rc/datree-cli_1.8.44-rc_Linux_arm64.zip"
    sha256 "a31cdf039b82ba31a6c3560c41a9394342a4e2a1a8a14af9a8fad472d0a847ac"
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
