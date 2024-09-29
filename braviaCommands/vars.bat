for /f "tokens=1,2 delims==" %%A in (%1) do (
    set %%A=%%B
)