# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.55-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.55-rc/datree-cli_0.14.55-rc_Darwin_x86_64.zip"
    sha256 "cd8ccdb31f8cb1c4671fc496f20abe66a61150d91d3c5c8558707294e8d43f00"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.55-rc/datree-cli_0.14.55-rc_Linux_x86_64.zip"
    sha256 "d9e757779d2b1abba3c4ab35d638d5712155465362baaa5f03f7f86661149948"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.55-rc/datree-cli_0.14.55-rc_Linux_arm64.zip"
    sha256 "77be1c400215bc8a036648776a625567d2de01f9851348dea142dd5c7561f5fe"
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
