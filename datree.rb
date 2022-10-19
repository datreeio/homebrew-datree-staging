# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.38-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.38-rc/datree-cli_1.6.38-rc_Darwin_x86_64.zip"
    sha256 "d5c146fc44b9e4fb8d5984d28a77b982009bc74e2e54edc2d9099d480839ea16"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.38-rc/datree-cli_1.6.38-rc_Darwin_arm64.zip"
    sha256 "65fc8dac5466208f4c803b680f123b862a3500ad477190d866c26b13bc3e175f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.38-rc/datree-cli_1.6.38-rc_Linux_x86_64.zip"
    sha256 "3615571516459697c1790ed7669706c6e709f72a3594657592ab67cdb077ebe0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.38-rc/datree-cli_1.6.38-rc_Linux_arm64.zip"
    sha256 "b4bfc5bbbe971e437fb0f5eae2ef32f71634e6755f1ee9ddd4c7008d80ff1bfc"
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
