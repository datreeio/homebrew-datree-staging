# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.6-rc/datree-cli_1.9.6-rc_Darwin_x86_64.zip"
    sha256 "dcfc0504fe9eb4f6940c2844e7896505a345f8e964c131ad643a9ea5199aac3c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.6-rc/datree-cli_1.9.6-rc_Darwin_arm64.zip"
    sha256 "2b600f5a2ccad0ca8ce7ca2740fc7de0a546624619b3193a95711a395bc2d142"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.6-rc/datree-cli_1.9.6-rc_Linux_x86_64.zip"
    sha256 "527f6672e496e76a368159bc88b0437a852a4d5f5411735881fa5ad0c9e5d5a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.6-rc/datree-cli_1.9.6-rc_Linux_arm64.zip"
    sha256 "d1f04ff76dbda224aceecf90cbcc5c4762319df385b70cd9eddc5e00d97c1969"
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
