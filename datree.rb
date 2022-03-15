# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.18-rc/datree-cli_0.16.18-rc_Darwin_x86_64.zip"
    sha256 "460dad3ba0e6546fb84bfc35cc226ca109e6e32f0d26f649d396e3653e688ccc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.18-rc/datree-cli_0.16.18-rc_Darwin_arm64.zip"
    sha256 "c61bebf15fd1a1a9b8952529bb329a5f38146566b4e6626b06ff41f1dd34d5a4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.18-rc/datree-cli_0.16.18-rc_Linux_x86_64.zip"
    sha256 "ba71e9c1c2a05b600f3ee892f4e66701a27966e7f07d7c548f9d3393bfa0b1d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.18-rc/datree-cli_0.16.18-rc_Linux_arm64.zip"
    sha256 "91b8e1332054ba493cd3dbac6808a3b3bbeda0061bb9ae96f167b2107e17d0f9"
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
