.PHONY: all clean

all: stats.txt report.txt

stats.txt: data.csv stats.py
	python stats.py

report.txt: report.md stats.txt build_report.py
	python build_report.py

clean:
	python -c "import os; [os.remove(f) for f in ('stats.txt', 'report.txt') if os.path.exists(f)]"