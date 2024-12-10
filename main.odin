package main

import rl "vendor:raylib"

main :: proc() {
	FONT_SIZE := i32(50)
	TITLE := cstring("Raylib with Odin")

	rl.InitWindow(800, 600, TITLE)
	defer rl.CloseWindow()

	rl.SetTargetFPS(60)

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.ClearBackground(rl.BLACK)

		rl.DrawText(
			TITLE,
			rl.GetScreenWidth() / 2 - rl.MeasureText(TITLE, FONT_SIZE) / 2,
			rl.GetScreenHeight() / 2 - FONT_SIZE,
			FONT_SIZE,
			rl.WHITE,
		)
	}
}
