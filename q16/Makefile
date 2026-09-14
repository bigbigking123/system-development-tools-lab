.PHONY: check build clean

check:
	"C:/Program Files/Git/bin/bash.exe" check.sh

build:
	python -m build --wheel

clean:
	python -c "import shutil, pathlib; shutil.rmtree('dist', ignore_errors=True); shutil.rmtree('build', ignore_errors=True); [shutil.rmtree(p, ignore_errors=True) for p in pathlib.Path('src').glob('*.egg-info')]"