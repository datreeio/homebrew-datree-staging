# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.68-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.68-rc/datree-cli_1.8.68-rc_Darwin_x86_64.zip"
    sha256 "62ab7abd94b316aa3dc80e3755bc3c6334fbf08e05cf0cc9817423486e7397b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.68-rc/datree-cli_1.8.68-rc_Darwin_arm64.zip"
    sha256 "297938ec9c2132b9a715291464e7671be9b5fb5f238d2e5ad8e1584a9c8321af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.68-rc/datree-cli_1.8.68-rc_Linux_x86_64.zip"
    sha256 "dd6695c8a738ed8fcc241159e2975bc742e9fb515b0f4c384ee592c5b0201e51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.68-rc/datree-cli_1.8.68-rc_Linux_arm64.zip"
    sha256 "5f4d85ad730927ea0ecb67f4840faab60ec2d3acf840b946546fd59d11831f3e"
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
