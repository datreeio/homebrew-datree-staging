# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.13-rc/datree-cli_1.4.13-rc_Darwin_x86_64.zip"
    sha256 "8b478e6558420e6b2ee78caa65379ddb29d76a6f526c731189e3dbb357e8d943"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.13-rc/datree-cli_1.4.13-rc_Darwin_arm64.zip"
    sha256 "95dcdfc41790a4605e0a9b56ad6c6a05710d124216dae622a18f5305c0fdf6e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.13-rc/datree-cli_1.4.13-rc_Linux_x86_64.zip"
    sha256 "608ea40be6de3473b30d3ed6982922c0f77223af73c688313ed31ccd81ada428"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.13-rc/datree-cli_1.4.13-rc_Linux_arm64.zip"
    sha256 "266847d60a2b482109a60e3ebb78b4930eea0d16ed7c800fbcaa5c856eb65718"
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
