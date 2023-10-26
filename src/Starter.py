from time import sleep
from rich.console import Console

console = Console()
tasks = [f"Successfully launched! " for n in range(1, 2)]

with console.status("[bold green]Launch Server-404 please wait a few seconds ...") as status:
    while tasks:
        task = tasks.pop(0)
        sleep(5)
        console.log(f"{task} Server-404")
