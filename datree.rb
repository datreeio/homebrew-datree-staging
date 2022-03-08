# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.47-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.47-rc/datree-cli_0.15.47-rc_Darwin_x86_64.zip"
    sha256 "28b1045e643e004624fcf101f2ce6a8d3048eaa43fcc8e089add25c2a3fa31d7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.47-rc/datree-cli_0.15.47-rc_Darwin_arm64.zip"
    sha256 "015ade749900698092b479facf4bdeb2b950eb0ab158528272b19d16440f3218"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.47-rc/datree-cli_0.15.47-rc_Linux_x86_64.zip"
    sha256 "2a58326b988b34bcf8c779ff6154d0691ae8b0eb7bb369c619f94ef2d832f784"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.47-rc/datree-cli_0.15.47-rc_Linux_arm64.zip"
    sha256 "a1e36fae0aa14ba1035f5cd4b54d5bf0ed075b0efad5433e50fcfde453299940"
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
      tput init
    EOS
  end
end
