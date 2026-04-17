---
name: Ralph Plus
description: Persistence loop with intelligent retry and verification
version: 1.0.0
author: DevForge
category: plugins
price: included
---

# Ralph Plus Plugin

Enhanced Ralph with intelligent retry logic and comprehensive verification.

## Features

- **Smart backoff**: Exponentially backs off on repeated failures
- **Strategy rotation**: Switches approach when stuck
- **Verification gates**: Mandatory checks before marking complete
- **Detailed logging**: Full audit trail of attempts

## Usage

```
/ralph-plus "implement user authentication"
```

## Compared to Standard Ralph

| Feature | Ralph | Ralph Plus |
|---------|-------|------------|
| Smart backoff | ✗ | ✓ |
| Strategy rotation | ✗ | ✓ |
| Verification gates | Basic | Comprehensive |
| Detailed logging | ✗ | Full audit trail |
| Max iterations | 10 | 50 |
