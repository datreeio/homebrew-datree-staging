# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.2-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Darwin_x86_64.zip"
    sha256 "55373d220d4635810722fef635afb47753630895465ea21d33cd273d9b2d0ae4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Linux_x86_64.zip"
    sha256 "52a4266f40e610aed6b1333d51d6da12d2857ace79553903f3626e5a6844ce3d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Linux_arm64.zip"
    sha256 "a0db634fecf565640f51b560a2279a235f5e28895939d702f0def450df712db2"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
