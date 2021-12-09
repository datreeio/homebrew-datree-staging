# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.66-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.66-rc/datree-cli_0.14.66-rc_Darwin_x86_64.zip"
    sha256 "5a94d2ad3ec92fc71b61a700dc6599d3434161d3211aa68f21be2a62843f57c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.66-rc/datree-cli_0.14.66-rc_Linux_x86_64.zip"
    sha256 "f42ede718631ec93c194db4b09e56399e1faca8b2cadb0e1084fbfe9b0bdf1c2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.66-rc/datree-cli_0.14.66-rc_Linux_arm64.zip"
    sha256 "37c4f0e8e309e95247541f3a2aa217df365c3452d49477744c6af893abad94d3"
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
