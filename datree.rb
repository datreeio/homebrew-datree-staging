# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.4-rc/datree-cli_0.16.4-rc_Darwin_x86_64.zip"
    sha256 "c1bd86292d07a0509a1f502b9e1b2eefabaf06b12e05b55ef0c0d063f944b657"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.4-rc/datree-cli_0.16.4-rc_Darwin_arm64.zip"
    sha256 "3c6cd32ae2d566d58af2cbbff8121cecfc0e5c96363fea929051cde221789e07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.4-rc/datree-cli_0.16.4-rc_Linux_x86_64.zip"
    sha256 "3fcdd368fe010a57fa66bfcc66bfc0223065feb595640462d3c2673cbffac62a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.4-rc/datree-cli_0.16.4-rc_Linux_arm64.zip"
    sha256 "d825001f9f56319588893971601eb9760d1bee04cc5123ae54f05d56544181b8"
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
