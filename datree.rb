# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.54-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.54-rc/datree-cli_1.8.54-rc_Darwin_x86_64.zip"
    sha256 "86d58c5be926f56fca5ef68e570b095515e0c15ea118aac7b19a55d940ff389b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.54-rc/datree-cli_1.8.54-rc_Darwin_arm64.zip"
    sha256 "c8cb5aaeaa95e699f31c0cd36fdc6f61795bff89152277bfb7c328bc0ccf4211"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.54-rc/datree-cli_1.8.54-rc_Linux_x86_64.zip"
    sha256 "05783f488ca58608fbcaa959e3694b3346ce69f5f3aa4fff2889b09a967b594c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.54-rc/datree-cli_1.8.54-rc_Linux_arm64.zip"
    sha256 "bfd6f3dad3183f956c6a4909668defe5f96fad92b58e58c56adbe1939b349b33"
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
