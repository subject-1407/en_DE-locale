# Custom en_DE Locale (English for Germany)

This project provides a custom en_DE locale for Linux systems using glibc locales.

It combines:

* English language (days, months, messages)
* German regional formatting (dates, numbers, currency, phone formats)

This is useful for international environments where English is required, but local German standards must be preserved.

---

## Features

* English weekday and month names
* German date format (`DD.MM.YYYY`)
* German numeric formatting (`,` decimal, `.` thousands separator)
* Euro currency formatting (`EUR`, `€`)
* German telephone and address conventions

---

## Files

```
locale/en_DE     - Locale definition
examples/demo.sh - Build & test script
```

---

## Requirements

* Linux system with **glibc**
* `localedef` (usually provided by `glibc-locales` or `locales` package)

---

## Build & Test

### Local build (without installing system-wide)

```bash
localedef -i locale/en_DE -f UTF-8 ./en_DE
```

Test it:

```bash
LC_ALL=./en_DE date
LC_ALL=./en_DE printf "%'.2f\n" 1234567.89
```

---

### System-wide installation

```bash
sudo localedef -i locale/en_DE -f UTF-8 en_DE.UTF-8
```

Enable it:

```bash
export LANG=en_DE.UTF-8
```

---
