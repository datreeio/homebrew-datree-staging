# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.60-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.60-rc/datree-cli_0.14.60-rc_Darwin_x86_64.zip"
    sha256 "cbc9008237181219e79cc85d47920232a3c9eb9e33b19e4d376043049813b601"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.60-rc/datree-cli_0.14.60-rc_Linux_x86_64.zip"
    sha256 "c5cfaf3824b3be850bd77731c3c9a3c794bf55867d595eb7f93a23e676209af1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.60-rc/datree-cli_0.14.60-rc_Linux_arm64.zip"
    sha256 "e52f1e385be1a323bee8c4e15d049ec66134124dd6c58f550110c20510017aa6"
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
