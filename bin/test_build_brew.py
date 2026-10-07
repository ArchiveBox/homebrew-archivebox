"""Exercise the release handoff against an actual published, CI-tested wheel."""

import importlib.machinery
import importlib.util
from pathlib import Path
import re
import unittest


loader = importlib.machinery.SourceFileLoader("build_brew", str(Path(__file__).with_name("build_brew.sh")))
spec = importlib.util.spec_from_loader(loader.name, loader)
build = importlib.util.module_from_spec(spec)
loader.exec_module(build)

# Exercise the artifact currently shipped by the tap, including future bumps.
formula = build.FORMULA_PATH.read_text()
VERSION, URL, SHA256 = (
    re.search(rf'^  {field} "([^"]+)"$', formula, re.MULTILINE).group(1)
    for field in ("version", "url", "sha256")
)


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
            build.published_wheel(VERSION + ".invalid", URL, SHA256)


if __name__ == "__main__":
    unittest.main()
