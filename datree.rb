# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.81-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.81-rc/datree-cli_0.14.81-rc_Darwin_x86_64.zip"
    sha256 "c1d0553f7b8d3c70c4ca43b6fc40627394178bb000acb26eabd2ea890622662f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.81-rc/datree-cli_0.14.81-rc_Linux_x86_64.zip"
    sha256 "16f4578cdf6e3737ea59a8d76bfc55bfbc745970ceda75b2be04ce58490f3a9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.81-rc/datree-cli_0.14.81-rc_Linux_arm64.zip"
    sha256 "594e346c0296629f91eb21bfd34a644bc30c98b34806d4ed05cbd608682a35f0"
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
