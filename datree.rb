# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.2-rc/datree-cli_1.5.2-rc_Darwin_x86_64.zip"
    sha256 "4851115d7429a74b7948b87f05811b74567e80a01b900b8dca4db2628b1c54d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.2-rc/datree-cli_1.5.2-rc_Darwin_arm64.zip"
    sha256 "95d7ea99e2ef5a1145b03dc89dfbb447f4ceec57406dcc7d8dded43e7ff6bb8d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.2-rc/datree-cli_1.5.2-rc_Linux_x86_64.zip"
    sha256 "f117356801cc7fafb99eda45f7501807f7ccd8b80b98cd74ddff78e850f5bbd3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.2-rc/datree-cli_1.5.2-rc_Linux_arm64.zip"
    sha256 "65ed3117d09f5f8199cbe6338980326c164ccbabc57b1d42334e430bf3812814"
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
