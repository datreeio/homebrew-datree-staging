# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.32-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.32-rc/datree-cli_1.8.32-rc_Darwin_x86_64.zip"
    sha256 "e8ba64063236ca2bdc834828561dce17e21ae31ee18909953a9daae7b7958a16"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.32-rc/datree-cli_1.8.32-rc_Darwin_arm64.zip"
    sha256 "caecf2f1da1d44cdbbd9bd6490bb5c280cb2f1e368c770c28515ed4503f5656a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.32-rc/datree-cli_1.8.32-rc_Linux_x86_64.zip"
    sha256 "4a5c65be8162b82af8c2c2846b238bb6f77db18bae0d2c38bce92bf95d7bd36b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.32-rc/datree-cli_1.8.32-rc_Linux_arm64.zip"
    sha256 "75377407e906b0d4c1dd5d437b7f407ce3afc955fd90014c847cc518c4d5a1ac"
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
