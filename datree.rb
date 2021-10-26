# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.18-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-staging/datree-cli_0.14.18-staging_Darwin_x86_64.zip"
    sha256 "cc192f9a1aa7fcf5385fb4483c3a29a43c1c57dee684f42d18c3349f68ad4b6e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-staging/datree-cli_0.14.18-staging_Linux_x86_64.zip"
    sha256 "f8990408d969200aac2611bb4376effb7214e4f26eee02f540d6e769a247476f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-staging/datree-cli_0.14.18-staging_Linux_arm64.zip"
    sha256 "de595b6d05342f999333eecb9510fa5d5acb09fb19686f3eaf1112377dd51431"
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
