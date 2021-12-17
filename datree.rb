# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.76-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.76-rc/datree-cli_0.14.76-rc_Darwin_x86_64.zip"
    sha256 "727a1cc5915cd28017bff215d86acddbe99478c0d0278b9b76c8b89500a5a628"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.76-rc/datree-cli_0.14.76-rc_Linux_x86_64.zip"
    sha256 "cf6a3a85ee23cfe98628458d999987c866961465b6ea96b02833179f2877456b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.76-rc/datree-cli_0.14.76-rc_Linux_arm64.zip"
    sha256 "9913d8e747f7a2273492fb6ca1d42b22e7b7b5cf58b4d682a3c8de3b0cbc5125"
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
