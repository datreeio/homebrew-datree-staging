# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.10-rc/datree-cli_1.3.10-rc_Darwin_x86_64.zip"
    sha256 "f2dbbd81bb9d8a5ca98bbbbb383b6e5e42edadfab37c8fff6b5cf0500b289e41"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.10-rc/datree-cli_1.3.10-rc_Darwin_arm64.zip"
    sha256 "25c4a727d8f3057348c33744bce142a5e24f012e27239faec9004256c90ba3df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.10-rc/datree-cli_1.3.10-rc_Linux_x86_64.zip"
    sha256 "589e06c9603c88b6898fec178539096c159203579435974034d63bca621ef588"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.10-rc/datree-cli_1.3.10-rc_Linux_arm64.zip"
    sha256 "20c90d0253e726be3c3c56873b452c807f0be2d056d651a6f8264b1d44b7fa70"
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
