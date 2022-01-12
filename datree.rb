# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.99-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.99-rc/datree-cli_0.14.99-rc_Darwin_x86_64.zip"
    sha256 "f236d7e696fd240275005db6f9c74bea8253835f4f1d1264db6b42dfd64ee463"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.99-rc/datree-cli_0.14.99-rc_Linux_x86_64.zip"
    sha256 "f960ebd7ea3aa680d3c91d158bffa35cd283c166fc11da0cbbc066daedddd817"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.99-rc/datree-cli_0.14.99-rc_Linux_arm64.zip"
    sha256 "6057ef5f5d844160639634512fe3f9177f1cf3eabf9144d3adaa9eb1d5b52413"
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
