# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.15-rc/datree-cli_1.4.15-rc_Darwin_x86_64.zip"
    sha256 "02bfb6d8b15230ed83489bb9a43dadb5dca58c3dc0d140c6f0ff9d3d6458a74b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.15-rc/datree-cli_1.4.15-rc_Darwin_arm64.zip"
    sha256 "5609fe6d689187ebbde2dbbef8a145cf56f49b4f57aeae7e8b36e26a04a4f2d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.15-rc/datree-cli_1.4.15-rc_Linux_x86_64.zip"
    sha256 "8b358ee1048c184af404a9a9157bf0502aba95875d246398250914894491ad3b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.15-rc/datree-cli_1.4.15-rc_Linux_arm64.zip"
    sha256 "0e53bd8a4283a1d40b983789329b24404b4e76bca21a8c7224be406d55922d03"
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
