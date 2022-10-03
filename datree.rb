# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.37-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.37-rc/datree-cli_1.6.37-rc_Darwin_x86_64.zip"
    sha256 "3c7673a1cff7dac46680aff760f28a95ecd016a909e0dc597cfc2974f92c5382"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.37-rc/datree-cli_1.6.37-rc_Darwin_arm64.zip"
    sha256 "2b6b98bb8921232d7b26b40d449b94564dbea569cf8ca3c558a554427b4aa097"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.37-rc/datree-cli_1.6.37-rc_Linux_x86_64.zip"
    sha256 "3ee9346e1e1da99c1cb01af60ae1462b4c67ebaa70c8912ba43dc7b84b734e52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.37-rc/datree-cli_1.6.37-rc_Linux_arm64.zip"
    sha256 "4aa231deeae42bf655d58931b8a86088912539e033b40c20b6ff3bcea1d52968"
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
    EOS
  end
end
