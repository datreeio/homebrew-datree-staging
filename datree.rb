# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.22-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.22-rc/datree-cli_0.14.22-rc_Darwin_x86_64.zip"
    sha256 "feb3541436641dd622b3cbbb6dba63c5714cd30388afd830bfd4d52c6c4aa935"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.22-rc/datree-cli_0.14.22-rc_Linux_x86_64.zip"
    sha256 "3bbaa9f266ba1305e75ef3e4d10db84c849707f240ccc82f56084edfca47c394"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.22-rc/datree-cli_0.14.22-rc_Linux_arm64.zip"
    sha256 "e9df08db646d412a6d4ebe4ff17beea96d829ad562a30cb82a08b88cbaa55546"
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
