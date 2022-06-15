# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.15-rc/datree-cli_1.5.15-rc_Darwin_x86_64.zip"
    sha256 "0906219a349ae28ee295aa657060e3a18a7d5331feece327b0637529a84fbb11"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.15-rc/datree-cli_1.5.15-rc_Darwin_arm64.zip"
    sha256 "3f5acb1f128dd2da42bec235048590a3fd830cda6cf0b490b5f040726d94ed79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.15-rc/datree-cli_1.5.15-rc_Linux_x86_64.zip"
    sha256 "98f341ba04c8221ad4e4cbeba3c377ec4ba27a584531c8535f26a36eca539411"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.15-rc/datree-cli_1.5.15-rc_Linux_arm64.zip"
    sha256 "969572efb0cb3146414ff7bfdcb8a67b2a4b520e0b7899c0fd0da94e8c83cc4a"
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
