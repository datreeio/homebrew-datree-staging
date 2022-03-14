# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.11-rc/datree-cli_0.16.11-rc_Darwin_x86_64.zip"
    sha256 "1ee9f36c4657e01398e25998b3e288089f43a377565bf500d2ae406812f49f0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.11-rc/datree-cli_0.16.11-rc_Darwin_arm64.zip"
    sha256 "aad58588939eccfc4ca1bdee02459368e7f03ac9c39a9210154347932543ceca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.11-rc/datree-cli_0.16.11-rc_Linux_x86_64.zip"
    sha256 "60bf3b7f7c93a8f32336a8842c52d48456250fe3e6e8e6bb5204de6581687292"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.11-rc/datree-cli_0.16.11-rc_Linux_arm64.zip"
    sha256 "9427995035cf57b0345889fd3f72142726882e98159375609dcb3899055c8087"
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
