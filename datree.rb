# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.27-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.27-rc/datree-cli_1.5.27-rc_Darwin_x86_64.zip"
    sha256 "69934231ed6d2153c4ce1db7f0a5ebc910bd51f581ee2bd2f4dbfd96fb7e42d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.27-rc/datree-cli_1.5.27-rc_Darwin_arm64.zip"
    sha256 "104158489f283409c3837340aff9c69b394202b93cd09e3949a22fe28d257c5d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.27-rc/datree-cli_1.5.27-rc_Linux_x86_64.zip"
    sha256 "a4a01704722230ea9b5f3e74e35c07df8f9bbb25e0c93f41b35b5f46ed039518"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.27-rc/datree-cli_1.5.27-rc_Linux_arm64.zip"
    sha256 "6cb48b7ddf763b5e0db5f691610d4e02f2db128f9c3a8dffc3151d8edc57aafe"
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
