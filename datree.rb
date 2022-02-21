# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.20-rc/datree-cli_0.15.20-rc_Darwin_x86_64.zip"
    sha256 "e150e618c48233acb4b6a271ad7f0965837eb5150d5fa21284fa90cb8f8a3d58"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.20-rc/datree-cli_0.15.20-rc_Darwin_arm64.zip"
    sha256 "75afaec1b96773a83e486bbe54850d0939b8ae5122082ca32ee249ce212a2ba8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.20-rc/datree-cli_0.15.20-rc_Linux_x86_64.zip"
    sha256 "b386a58e18a63394df9fef636e95dcf878b133696cb3a4b378a4eaa4effc8ea1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.20-rc/datree-cli_0.15.20-rc_Linux_arm64.zip"
    sha256 "de278c59c79a2667be057f4f261337f70866173a13a70490bd5b42eba4abe647"
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
