# Grizzly sanitization gate.
# Greps all git-tracked files for terms in the maintainer's private term list.
# The list itself is local-only (gitignored); contributors without one pass trivially.
# Exit 0 = clean, exit 1 = leak found.

param([string]$ListPath = "sprints/sanitize-list.local.md")

if (-not (Test-Path $ListPath)) {
    Write-Host "sanitize-gate: no local term list found. Skipping (OK for contributors)."
    exit 0
}

$lines = Get-Content $ListPath | Where-Object { $_.Trim() -and $_ -notmatch '^\s*#' }
$grepTerms = @($lines | Where-Object { $_ -notmatch '# manual' } | ForEach-Object { $_.Trim() })
$manualTerms = @($lines | Where-Object { $_ -match '# manual' })

$files = git ls-files | Where-Object { Test-Path $_ -PathType Leaf }
$leak = $false

foreach ($t in $grepTerms) {
    $hits = Select-String -Path $files -Pattern $t -SimpleMatch
    if ($hits) {
        $leak = $true
        $hits | ForEach-Object { Write-Host "LEAK: $($_.Path):$($_.LineNumber) contains '$t'" }
    }
}

if ($manualTerms.Count -gt 0) {
    Write-Host ""
    Write-Host "Manual-check terms (too common to grep; verify new prose by eye):"
    $manualTerms | ForEach-Object { Write-Host "  $($_)" }
}

if ($leak) {
    Write-Host ""
    Write-Host "sanitize-gate: FAILED. Remove the flagged content before committing or pushing."
    exit 1
}

Write-Host "sanitize-gate: clean."
exit 0
