# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.6-rc/datree-cli_1.2.6-rc_Darwin_x86_64.zip"
    sha256 "4be1da2268dbc71dcf9343ffe8b43fcb84aa8c074effb74d852df2f50a9c3c58"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.6-rc/datree-cli_1.2.6-rc_Darwin_arm64.zip"
    sha256 "d0ec1a5660dba35a8108762e8b247805a4d8e6179157b95ba18343c1c92ca232"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.6-rc/datree-cli_1.2.6-rc_Linux_x86_64.zip"
    sha256 "f30297b4fafc9159f19e08a41062670c855f996ad6fd5a4a81c5a9af6292f63a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.6-rc/datree-cli_1.2.6-rc_Linux_arm64.zip"
    sha256 "2bd51eec40dc94a1ca5ae138ef0d90f1728113e2413188c07ddb244121b8256b"
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
