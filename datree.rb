# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.10-rc/datree-cli_1.6.10-rc_Darwin_x86_64.zip"
    sha256 "598c08a752df0500875b02d2509f928817598e169da628f0eeed496847d666f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.10-rc/datree-cli_1.6.10-rc_Darwin_arm64.zip"
    sha256 "9b6def6ff56d2c82a692730d98cc438bae78d52e4b6f49df436fb7fb4f831662"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.10-rc/datree-cli_1.6.10-rc_Linux_x86_64.zip"
    sha256 "635e0276958f489f1f0e5e812ecd6fcfd682edf34d4bf3f3571c23610848ec77"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.10-rc/datree-cli_1.6.10-rc_Linux_arm64.zip"
    sha256 "aa869c169a4ee6d438b9c4330641f369db71cf44944de66f8c6d977afa31c155"
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
