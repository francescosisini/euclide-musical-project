from pathlib import Path

source = Path("Sottotitoli.txt")
destination = Path(
    "Label.srt"
)

def srt_time(seconds: str) -> str:
    total_ms = round(float(seconds) * 1000)

    hours, remainder = divmod(total_ms, 3_600_000)
    minutes, remainder = divmod(remainder, 60_000)
    secs, milliseconds = divmod(remainder, 1_000)

    return (
        f"{hours:02d}:{minutes:02d}:"
        f"{secs:02d},{milliseconds:03d}"
    )

subtitles = []

for line in source.read_text(encoding="utf-8").splitlines():
    if not line.strip():
        continue

    parts = line.split("\t", 2)

    if len(parts) != 3:
        print(f"Riga ignorata: {line!r}")
        continue

    start, end, text = parts

    # Trasforma \N inserito in Audacity in un vero ritorno a capo SRT.
    text = text.replace("\\N", "\n").strip()

    number = len(subtitles) + 1

    subtitles.append(
        f"{number}\n"
        f"{srt_time(start)} --> {srt_time(end)}\n"
        f"{text}\n"
    )

destination.write_text(
    "\n".join(subtitles),
    encoding="utf-8"
)

print(f"Creato: {destination}")
print(f"Sottotitoli: {len(subtitles)}")
