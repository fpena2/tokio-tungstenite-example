@echo off

rem Start the server in a new command prompt window
start cmd /k "cargo run --bin test_server 127.0.0.1:12345"

rem Wait for a moment to allow the server to start
timeout /t 2

rem Start the client in a new command prompt window
start cmd /k "cargo run --bin test_client ws://127.0.0.1:12345/"

rem Optional: Add more clients here, e.g., start_client2.bat, start_client3.bat, etc.
