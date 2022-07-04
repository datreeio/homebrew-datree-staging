# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.23-rc/datree-cli_1.5.23-rc_Darwin_x86_64.zip"
    sha256 "d596d84eff6a22b98f0565ce87e53fb35548b394e329cb246a8313b2731e7238"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.23-rc/datree-cli_1.5.23-rc_Darwin_arm64.zip"
    sha256 "cc56a2bae230fea1154a87fb4136d22eb5c5e03028050ae9d7205767cc621b0f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.23-rc/datree-cli_1.5.23-rc_Linux_x86_64.zip"
    sha256 "d68005d858826cd49dd03320c9a1fe25f538dc366aef9e5208f100314d856f87"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.23-rc/datree-cli_1.5.23-rc_Linux_arm64.zip"
    sha256 "1f5986facf7012c9ce0f981ef2839733dfa908cddbe0f13a1b004639983754de"
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
