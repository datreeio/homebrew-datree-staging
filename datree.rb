# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.1-rc/datree-cli_1.1.1-rc_Darwin_x86_64.zip"
    sha256 "fc2e8aef61f9a0c8a77332c7f5864a887069e25c0daffc26b1b8062fa6aab935"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.1-rc/datree-cli_1.1.1-rc_Darwin_arm64.zip"
    sha256 "f32c7faadef7e02161826054fa96de40459665f8f49197ffff6afc48131eb317"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.1-rc/datree-cli_1.1.1-rc_Linux_x86_64.zip"
    sha256 "8a2362223a0819351e8d5b9de9bba0ab8db744ad2a7aa3c2ff99c422e355ac3f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.1-rc/datree-cli_1.1.1-rc_Linux_arm64.zip"
    sha256 "64550bf0c57270b7357f9a56f28f892ecfa314ec6b00a31c7d6eb0069fc6600c"
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
      tput init
    EOS
  end
end
