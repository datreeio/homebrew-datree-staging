# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "v1.4.43-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.43-rc/datree-cli_v1.4.43-rc_Darwin_x86_64.zip"
    sha256 "57973fec1ed92a2fc5de67a31c99a282203cdc0634801af7ea2e0d42dab5e806"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/v1.4.43-rc/datree-cli_v1.4.43-rc_Darwin_arm64.zip"
    sha256 "16b7346cbc6512a624ef801ca0c605a5cc59608aa24618d4de8efa29436e7ca1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.43-rc/datree-cli_v1.4.43-rc_Linux_x86_64.zip"
    sha256 "eecbc6c2ce3f1bc84760947fbc1fdacf6fae4a667b47ce8a6a74b526b399a830"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/v1.4.43-rc/datree-cli_v1.4.43-rc_Linux_arm64.zip"
    sha256 "db641c3918b5b42f6c18bb3453e703a1c8e2f78feeafb22d2eeeb0a76cb73b93"
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
