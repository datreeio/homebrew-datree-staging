# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Darwin_x86_64.zip"
    sha256 "4ae7c3394ab2405caa8cf3ea3280bb0cbb9642a522503518b9f5f7d1b33124d5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_x86_64.zip"
    sha256 "ef6076d8d5066dd933071c7481a44224a8e880a36e1d730febc87ad92f553636"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_arm64.zip"
    sha256 "2039344c39a2b9b8cb3cdae539cac8695c3d37c9998dbc7d9ab55da33dd922ab"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
