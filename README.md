# Tutorial 6 - Game Development
### Nayla Farah Nida [2306213426]

Fitur tambahan:
- Tombol 'Try Again' dan 'Main Menu' pada scene ```Game Over.tscn```
- Menu stage selection
- GUI level transition 
- Pause menu

1. Menu stage selection
   Strukturnya sama seperti ```MainMenu.tscn``` yang dibuat di latihan, hanya saja isinya berupa 3 link button untuk mengarahkan player ke level yang tersedia
   atau kembali ke main menu (tombol 'Back').

2. Level transition
   GUI ini menggunakan node ```CanvasLayer``` yang akan muncul ketika Player memasuki Area2D dengan mengatur variabel ```visible``` pada script ```Level Transition.tscn```,
   dan menggunakan node ```PanelContainer``` untuk membuat semacam tampilan card yang rapih. 

3. Pause menu
   Diakses dengan tombol Escape (```Esc```). Menggunakan CanvasLayer agar UI tetap aktif saat game di-pause. Berisi tombol ```Continue``` untuk melanjutkan permainan dari kondisi terakhir
   dan ```Exit``` untuk kembali ke Main Menu. Menggunakan ```get_tree().paused``` untuk menghentikan game sementara tanpa reset state.

Referensi:
- [Tutorial 6 - Menu and In-Game Graphical User Interface](https://csui-game-development.github.io/tutorials/tutorial-6/#latihan-mandiri-fitur-tambahan)
