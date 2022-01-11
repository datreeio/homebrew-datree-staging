# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.96-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.96-rc/datree-cli_0.14.96-rc_Darwin_x86_64.zip"
    sha256 "b8263367070176212cbea6882e1a7886feb5855dad169a62fd9103390abc307b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.96-rc/datree-cli_0.14.96-rc_Linux_x86_64.zip"
    sha256 "e3c1bf8ce1f31a9e3e3e96a7010496c6f386428221e3d211c700516d54dca629"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.96-rc/datree-cli_0.14.96-rc_Linux_arm64.zip"
    sha256 "48fe69071c3712f55c3e9eafd8a40c8871f2e1eb739a6f5f9ea81188321239cd"
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
