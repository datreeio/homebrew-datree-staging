# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.5-rc/datree-cli_0.16.5-rc_Darwin_x86_64.zip"
    sha256 "021dd49f61c9e1b407c34afdcb03ec0b8af6cfef3a9bb42eafd74a2080c911a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.5-rc/datree-cli_0.16.5-rc_Darwin_arm64.zip"
    sha256 "54f30abd3968f51f7deae85a943d02fcc18d9c1eaf91bf9b8c47d6c6a444f38d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.5-rc/datree-cli_0.16.5-rc_Linux_x86_64.zip"
    sha256 "1e2ef2c2506d25e94dc0668d5d92b34a695420a692fc73a13fd7b5e7396d7e31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.5-rc/datree-cli_0.16.5-rc_Linux_arm64.zip"
    sha256 "1bb7e310f9a7cd4a2ffddf2a8e64df052b70ed6cbe2d768731e71313cde17a98"
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
