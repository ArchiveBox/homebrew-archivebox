"""Exercise the release handoff against an actual published, CI-tested wheel."""

import importlib.machinery
import importlib.util
from pathlib import Path
import unittest


loader = importlib.machinery.SourceFileLoader("build_brew", str(Path(__file__).with_name("build_brew.sh")))
spec = importlib.util.spec_from_loader(loader.name, loader)
build = importlib.util.module_from_spec(spec)
loader.exec_module(build)

# From ArchiveBox CI run 37551885745's python-distributions artifact.
VERSION = "0.9.74rc5"
URL = "https://files.pythonhosted.org/packages/e1/76/a4dbe883a19456e853772822a7a7c61cb254841e4074d346fee2811817b7/archivebox-0.9.74rc5-py3-none-any.whl"
SHA256 = "2e22f66e5319e2bd709633282b0d896deb6cf41f44a1a14894125dd32130e539"


class PublishedWheelTests(unittest.TestCase):
    def test_exact_tested_wheel_is_downloaded_and_verified(self):
        self.assertEqual(build.published_wheel(VERSION, URL, SHA256), (URL, SHA256))

    def test_real_download_rejects_wrong_digest(self):
        with self.assertRaisesRegex(ValueError, "SHA256 mismatch"):
            build.published_wheel(VERSION, URL, "0" * 64)

    def test_incomplete_handoff_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "together"):
            build.published_wheel(VERSION, URL, "")

    def test_wrong_release_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "version"):
            build.published_wheel("0.9.73", URL, SHA256)


if __name__ == "__main__":
    unittest.main()
