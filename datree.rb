# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.68-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.68-rc/datree-cli_0.14.68-rc_Darwin_x86_64.zip"
    sha256 "5860e9094f162ba248814eceb330e1d42f4e41aa45a9492da77b75e0621e3ad1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.68-rc/datree-cli_0.14.68-rc_Linux_x86_64.zip"
    sha256 "a9c96ec499cc66da316f6c1a6f87fccb9bebb1f0c3ebb5b41691a0d53ec1a6c2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.68-rc/datree-cli_0.14.68-rc_Linux_arm64.zip"
    sha256 "d1d05716de0831d7dca82ee8c0a3b79641b1616d923eb537265a67585f8cb142"
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
