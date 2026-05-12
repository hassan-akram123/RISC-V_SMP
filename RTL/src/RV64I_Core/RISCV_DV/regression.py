#!/usr/bin/env python3
import os
import shutil
import subprocess
import sys
from pathlib import Path

# ---------------- CONFIGURATION ----------------
TEST_LIST = os.environ.get(
    "TEST_LIST",
    "riscv_arithmetic_basic_test riscv_loop_test riscv_rand_jump_test "
    "riscv_jump_stress_test riscv_mmu_stress_test"
).split()

# Default around 10–15 iterations (0..14)
ITERATIONS = int(os.environ.get("ITERATIONS", "15"))

SIM_BIN = os.environ.get("SIM_BIN", "./obj_dir/Vtb_top")
RAW_LOG = os.environ.get("RAW_LOG", "trace_core_00000001.log")

CORE_TO_CSV = os.environ.get("CORE_TO_CSV", "scripts/core_log_to_trace_csv.py")
COMPARE_CSV = os.environ.get("COMPARE_CSV", "scripts/instr_trace_compare.py")

RESULTS_DIR = Path(os.environ.get("RESULTS_DIR", "results"))
RESULTS_DIR.mkdir(exist_ok=True)
# ------------------------------------------------

total_runs = 0
passed_runs = 0
failed_runs = 0


def run_cmd(cmd, check=True):
    """Run a shell command and optionally check for errors."""
    print(f"[CMD] {' '.join(map(str, cmd))}")
    result = subprocess.run(list(map(str, cmd)))
    if check and result.returncode != 0:
        return False
    return True


def safe_move(src: Path, dst: Path):
    """Move file; if dst exists, overwrite it."""
    dst.parent.mkdir(parents=True, exist_ok=True)
    if dst.exists():
        dst.unlink()
    shutil.move(str(src), str(dst))


def run_test(test_name: str, idx: int):
    global total_runs, passed_runs, failed_runs
    total_runs += 1

    print(f"\n=== Running {test_name} iteration {idx} ===")

    # Create subfolder for this test
    test_results_dir = RESULTS_DIR / test_name
    test_results_dir.mkdir(parents=True, exist_ok=True)

    # 1) Run simulation
    if not run_cmd([SIM_BIN, f"+TEST={test_name}", f"+IDX={idx}"], check=True):
        print(f"[FAIL] Simulation failed for {test_name} iter {idx}")
        failed_runs += 1
        return

    # 2) Move raw log to test subfolder
    raw_log_path = Path(RAW_LOG)
    log_dest = test_results_dir / f"iter{idx:03d}.log"  # iter000..iter014
    if raw_log_path.exists():
        safe_move(raw_log_path, log_dest)
    else:
        print(f"[ERROR] Log file not found: {RAW_LOG}")
        failed_runs += 1
        return

    # 3) Convert log to CSV
    csv_dest = test_results_dir / f"iter{idx:03d}.csv"
    if not run_cmd([
        "python3", CORE_TO_CSV,
        "--log", log_dest,
        "--csv", csv_dest
    ], check=True):
        print(f"[FAIL] CSV conversion failed for {test_name} iter {idx}")
        failed_runs += 1
        return

    # 4) Compare with Spike reference (spike_trace_0.csv ...)
    ref_csv = Path(f"tests/{test_name}/spike_trace_{idx}.csv")
    if not ref_csv.exists():
        print(f"[ERROR] Missing reference CSV: {ref_csv}")
        failed_runs += 1
        return

    ok = run_cmd([
        "python3", COMPARE_CSV,
        "--csv_file_1", ref_csv,
        "--csv_file_2", csv_dest,
        "--csv_name_1", "spike",
        "--csv_name_2", "core"
    ], check=False)

    if ok:
        print(f"[PASS] {test_name} iter {idx}")
        passed_runs += 1
    else:
        print(f"[FAIL] {test_name} iter {idx}")
        failed_runs += 1


def main():
    for test in TEST_LIST:
        for idx in range(ITERATIONS):  # 0 .. ITERATIONS-1
            run_test(test, idx)

    print("\n=== Regression Summary ===")
    print(f"Tests      : {' '.join(TEST_LIST)}")
    print(f"Iterations : {ITERATIONS} (idx 0..{ITERATIONS-1})")
    print(f"Total runs : {total_runs}")
    print(f"Passed     : {passed_runs}")
    print(f"Failed     : {failed_runs}")

    return 0 if failed_runs == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
