# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.8-rc/datree-cli_0.16.8-rc_Darwin_x86_64.zip"
    sha256 "dcf558c520d9be93f7f812c660496765a81561151199cc83702366a39f4a8678"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.8-rc/datree-cli_0.16.8-rc_Darwin_arm64.zip"
    sha256 "3f05c770dee597246054f35678c0beb31a5536a59500b8043930ba2f26d841c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.8-rc/datree-cli_0.16.8-rc_Linux_x86_64.zip"
    sha256 "ee184ce55ef0735961d106eef3c45c7e3243362446c890b353704f0954a2a979"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.8-rc/datree-cli_0.16.8-rc_Linux_arm64.zip"
    sha256 "92e434b22bbe366d094d8f86b8f4baf1dddd4c344c4b1337533e78a8eba618f5"
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
