# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.43-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.43-rc/datree-cli_0.14.43-rc_Darwin_x86_64.zip"
    sha256 "ff254490b90c65c70c45711152e670175873a43ae5ab30119a5fe9207619b4c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.43-rc/datree-cli_0.14.43-rc_Linux_x86_64.zip"
    sha256 "635db962442c06db573a7c11b504988fb45ea443ca7d57981fd4a4b1c0befc73"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.43-rc/datree-cli_0.14.43-rc_Linux_arm64.zip"
    sha256 "fd42a3c2313872f3f023e32bac35c484606512ad6b18b3d3354ad551a018630f"
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
