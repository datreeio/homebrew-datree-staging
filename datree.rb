# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.2-rc/datree-cli_1.0.2-rc_Darwin_x86_64.zip"
    sha256 "830c2b339309f023ac44b46784d964620540d7f7cafe620d64507a387c8f624f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.2-rc/datree-cli_1.0.2-rc_Darwin_arm64.zip"
    sha256 "15d95a1e83d4f2c5fa0fa0b6e7b1bf900362b77149aa4e53ec4b16b720eaffe1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.2-rc/datree-cli_1.0.2-rc_Linux_x86_64.zip"
    sha256 "60041ef3d907703c196bfb7f2d83218f938c1809e3cdb78f16b3c2faaacadc58"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.2-rc/datree-cli_1.0.2-rc_Linux_arm64.zip"
    sha256 "a52e66269543daf3edb2fb629cd419deace5c8dda0793b4f8cf371d5b515e406"
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
