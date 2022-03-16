# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.0-rc/datree-cli_1.0.0-rc_Darwin_x86_64.zip"
    sha256 "01a05fafa9ee752f2dc7ae3db58fa1451fb426665afbcb1daf23c9e1220b2979"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.0-rc/datree-cli_1.0.0-rc_Darwin_arm64.zip"
    sha256 "81346407b7af09fde3b6aab57fefa5259ae1aba46d2ad07d0c6057f299dd234e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.0-rc/datree-cli_1.0.0-rc_Linux_x86_64.zip"
    sha256 "089ab240aec29407dd55e31de6ebab061fcaf6173c0b74baf754e44d29475380"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.0-rc/datree-cli_1.0.0-rc_Linux_arm64.zip"
    sha256 "5dbc86132aea5c3fa23797572a3547295fbd635df3aef468020be8c526d9c933"
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
