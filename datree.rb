# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.13-rc/datree-cli_1.8.13-rc_Darwin_x86_64.zip"
    sha256 "f91fb65138200d6e7bbc766cda575e0b589afcbeaffa009c1ec0ee3c1250bf79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.13-rc/datree-cli_1.8.13-rc_Darwin_arm64.zip"
    sha256 "1ddbab002be9d81127fcba12329681657946456217a5a0584716ec0b68b4b85f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.13-rc/datree-cli_1.8.13-rc_Linux_x86_64.zip"
    sha256 "dbc45b271ab71377c85547ea352e667da405d3455cfc96f724c568ea95ef4dc1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.13-rc/datree-cli_1.8.13-rc_Linux_arm64.zip"
    sha256 "e8de0169e4aa40d2bbc6170ad64cf9ee823e455301c055b5bcdfeef42959936f"
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
