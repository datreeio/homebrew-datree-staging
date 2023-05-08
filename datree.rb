# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.70-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.70-rc/datree-cli_1.8.70-rc_Darwin_x86_64.zip"
    sha256 "5e3068d65aa0171cace0a1c1bc325192aab3ac86d821a40606a6d120c8e5be7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.70-rc/datree-cli_1.8.70-rc_Darwin_arm64.zip"
    sha256 "c59f719d43314fdb661531de8b4dfc05c7ad080d6eb6781ed4e0d6c9596c4181"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.70-rc/datree-cli_1.8.70-rc_Linux_x86_64.zip"
    sha256 "afb4052cd8b00d95aad0983e96e154907fc7ceadf664c7797c6b677eae5b84a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.70-rc/datree-cli_1.8.70-rc_Linux_arm64.zip"
    sha256 "03985fab785cde57f820dfc6576659e9fedf6b0c659581423a2e3269bbcde806"
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
