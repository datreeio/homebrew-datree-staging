# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.5-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.5-staging/datree-cli_0.13.5-staging_Darwin_x86_64.zip"
    sha256 "e00a0397a4b3360d7791b96f4ecf48a0fc43d7520f7f32ea0bc732f027202765"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.5-staging/datree-cli_0.13.5-staging_Linux_x86_64.zip"
    sha256 "f1db0cfb84463e46c4ac4ba2aedd2082f81b2310f497c0bf2a5ab6f28b67fa9a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.5-staging/datree-cli_0.13.5-staging_Linux_arm64.zip"
    sha256 "d46072b7cc12b665c4bf80b2e79c3dbed9e64d00cee00bf8efecb06554d2f513"
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
