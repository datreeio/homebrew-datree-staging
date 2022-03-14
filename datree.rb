# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.9-rc/datree-cli_0.16.9-rc_Darwin_x86_64.zip"
    sha256 "278f33d5055a6186c943606e0d079fd036e03e0405ae46629cbfd2737409759e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.9-rc/datree-cli_0.16.9-rc_Darwin_arm64.zip"
    sha256 "7208fda1934ec3dd30827e602756d2e5dd8cca5abc35980415dcc4fc7882aafd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.9-rc/datree-cli_0.16.9-rc_Linux_x86_64.zip"
    sha256 "27e34e93905840a2149c4239b497d71934bdc9270176379ebf8b8c8cc01dc597"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.9-rc/datree-cli_0.16.9-rc_Linux_arm64.zip"
    sha256 "be129aa9cdaa8d4261334f8df7c0ba1bec2e5a8545890455988b950e4d63cb90"
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
