# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.30-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.30-rc/datree-cli_0.14.30-rc_Darwin_x86_64.zip"
    sha256 "403e98526159bb8c6f7f3ab8d57cd473c3273070e36a905416db6fd4804187f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.30-rc/datree-cli_0.14.30-rc_Linux_x86_64.zip"
    sha256 "9c3bff3617f553ed2addf16e8e6b3b5df8c56664ab11d8347328b8a74dd50584"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.30-rc/datree-cli_0.14.30-rc_Linux_arm64.zip"
    sha256 "b8952cae9c16070488ce00665afadcba3a9862217b91c41feba9c9f5e7c641f3"
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
