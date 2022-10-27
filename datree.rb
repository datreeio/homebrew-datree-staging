# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.46-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.46-rc/datree-cli_1.6.46-rc_Darwin_x86_64.zip"
    sha256 "fad8ba0ca7ed6a3223d4fa09955b7776e08ac80275829ab21a05b193252a31e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.46-rc/datree-cli_1.6.46-rc_Darwin_arm64.zip"
    sha256 "929688020f21c20b98fe0933953801633165c8ffea352fe166ee8c20295dcae0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.46-rc/datree-cli_1.6.46-rc_Linux_x86_64.zip"
    sha256 "bdcbc8c2da1048b139b621dab6cad4424fb09f2977eb05b145d6223dd3a3ff52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.46-rc/datree-cli_1.6.46-rc_Linux_arm64.zip"
    sha256 "69daffd2a17683e5fdd84ee51948d0dfd9e3bd9b301f4c36f4ae9c8d173c01a9"
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
