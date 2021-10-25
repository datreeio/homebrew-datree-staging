# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.16-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.16-staging/datree-cli_0.14.16-staging_Darwin_x86_64.zip"
    sha256 "4389749e9d38bde6218bbf4320b068716d78c6a8a7e76a4cb5d3c9dd39a69ce6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.16-staging/datree-cli_0.14.16-staging_Linux_x86_64.zip"
    sha256 "c7b53be55ffdc85c2a15b00399ee2d76f99332af578bfaef6864d7ff19183734"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.16-staging/datree-cli_0.14.16-staging_Linux_arm64.zip"
    sha256 "430599d5991a0f2a74cfe37f9db37f80d77a41d0b0e08b4acc35b06b26278cf1"
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
