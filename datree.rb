# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.67-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.67-rc/datree-cli_1.8.67-rc_Darwin_x86_64.zip"
    sha256 "ac998d7ca0f16beec6ce36fe356066a8fbcb5b2f71ea3d8d21bf78c338d0d993"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.67-rc/datree-cli_1.8.67-rc_Darwin_arm64.zip"
    sha256 "d3f209bbeae8da953899c7ff5653b3139348e74024bedcfd4ca58915ffb9a649"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.67-rc/datree-cli_1.8.67-rc_Linux_x86_64.zip"
    sha256 "69718af80326f1513b405e73df4e754d6fc9d9b69afba07c9f883dce3c6ff17c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.67-rc/datree-cli_1.8.67-rc_Linux_arm64.zip"
    sha256 "b1cafc012a290e0b81d8b18e4899e719e09fa6c27b122e611a37a21cfde46678"
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
