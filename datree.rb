# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.38-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.38-rc/datree-cli_1.4.38-rc_Darwin_x86_64.zip"
    sha256 "866631070db59b11cb27cadb2f8561a47da5cb1c40f87fb2d4cca011bb70421c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.38-rc/datree-cli_1.4.38-rc_Darwin_arm64.zip"
    sha256 "9cdc82988f69eb6949ca64c3eea3429f5879859e2a20cd85f816d2243b02e768"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.38-rc/datree-cli_1.4.38-rc_Linux_x86_64.zip"
    sha256 "60b99c913d900dfcadca0473c38626c52b5b64a0e95cbfce9cb2672c6d44a964"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.38-rc/datree-cli_1.4.38-rc_Linux_arm64.zip"
    sha256 "eec4384d795b22a0e8d400984bd76264980eee5b90f3efe64ef416440baa4e46"
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
