# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.20-rc/datree-cli_1.6.20-rc_Darwin_x86_64.zip"
    sha256 "2ecf6dba7353b9b73bba4a94dbe3a5ae252a582c6782af98414fa2cac0ae6b77"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.20-rc/datree-cli_1.6.20-rc_Darwin_arm64.zip"
    sha256 "8cb5662063cf633832cfb954f799523ea31dd3d69bcb10ca54a635eefc6541be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.20-rc/datree-cli_1.6.20-rc_Linux_x86_64.zip"
    sha256 "025d78aad5cc20e5860db17ac5a24e0da8aec32635f30a1018a62763390a019b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.20-rc/datree-cli_1.6.20-rc_Linux_arm64.zip"
    sha256 "fc4068aa96ec4d91ab0eef466f41ed8bab5deef281f874ffcc09260c60c61da3"
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
