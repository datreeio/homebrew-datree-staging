# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.36-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.36-rc/datree-cli_1.5.36-rc_Darwin_x86_64.zip"
    sha256 "f59aa12997ee5d1377c2d5e10f3f289462f4901635b724e5d93b0d7855231276"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.36-rc/datree-cli_1.5.36-rc_Darwin_arm64.zip"
    sha256 "7d6b49a18c18cd9a918b82365846b0e50f452de038ba17b4e69a273adb0f7717"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.36-rc/datree-cli_1.5.36-rc_Linux_x86_64.zip"
    sha256 "a93dfa8a7c18fe015513f2c8f120bfa60b7af7ba27cf2cb8afff73244163ecd2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.36-rc/datree-cli_1.5.36-rc_Linux_arm64.zip"
    sha256 "13103cef2c3d16492857f9f1eba3d4b17da3cd8e1c5d001ce9b46fa7171ceb85"
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
