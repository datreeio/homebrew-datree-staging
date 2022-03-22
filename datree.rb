# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.13-rc/datree-cli_1.0.13-rc_Darwin_x86_64.zip"
    sha256 "c7b88c05f525a5209e33f947bd9c96f0da56161a8fa896b3a2dd276b5e9b6191"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.13-rc/datree-cli_1.0.13-rc_Darwin_arm64.zip"
    sha256 "30fc257ba980e623a6c09177431e6f1d604dd5006ba6c65e4460a8e16ed1fe87"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.13-rc/datree-cli_1.0.13-rc_Linux_x86_64.zip"
    sha256 "2a29bbc69f4574c99bffe4e9515b89f707b5fca599b6479ed430394d762a1864"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.13-rc/datree-cli_1.0.13-rc_Linux_arm64.zip"
    sha256 "8f07bc4aa86d0db1748bff953cd7e7b1836e1de00e6edb8ccc5ab2a8435afd2c"
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
