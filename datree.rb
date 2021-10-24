# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.12-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.12-staging/datree-cli_0.14.12-staging_Darwin_x86_64.zip"
    sha256 "5bcdfc41f559e5b2df8ac67750f2a42b40eebcd1f9ae3dd404d634b62a3e0d88"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.12-staging/datree-cli_0.14.12-staging_Linux_x86_64.zip"
    sha256 "b2cb8173c8b9ad8ddb7a48bbd0b53a3c4db748c3d1f7c31383c96724468adc5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.12-staging/datree-cli_0.14.12-staging_Linux_arm64.zip"
    sha256 "c023aa358b585cb7e042b3bb3d3214d8110f6c1d539e6b20cd44fde4d7696a0a"
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
