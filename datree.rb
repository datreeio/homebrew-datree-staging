# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.36-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.36-rc/datree-cli_1.4.36-rc_Darwin_x86_64.zip"
    sha256 "48ab9c054331741214d1d4bfc4c03b9f5efc576bde4049b80e88cfec0856f046"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.36-rc/datree-cli_1.4.36-rc_Darwin_arm64.zip"
    sha256 "a82bb9ea0ba7f7c0678fcab292c026ba55fd776e03cffa542fdd6524f824107e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.36-rc/datree-cli_1.4.36-rc_Linux_x86_64.zip"
    sha256 "da557e359b3f9903c3f7e9cf35e5d34082f0a6fd54a9327a11b5d583f8d5b123"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.36-rc/datree-cli_1.4.36-rc_Linux_arm64.zip"
    sha256 "5c3c3ce0421c4caeb15c40f5047dd7ed96e2a2a09145b14786ae121f3fdbb323"
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
