# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.51-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.51-rc/datree-cli_0.14.51-rc_Darwin_x86_64.zip"
    sha256 "36dd460b8f26dfd991434758e0c3de2ba0747418dba08a8717895e7f7b03efc3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.51-rc/datree-cli_0.14.51-rc_Linux_x86_64.zip"
    sha256 "18ae628da3eecefe2a17e362fbe1973ba1075a3b672611e7415b81588ce8a5fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.51-rc/datree-cli_0.14.51-rc_Linux_arm64.zip"
    sha256 "84fa60bbd2ad2c781d069d5c0a549af05e8668c051fd036beb4b9b8bc4350bbd"
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
