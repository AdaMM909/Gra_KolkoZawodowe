extends CanvasLayer

# --- ŚCIEŻKI DO TEŁ (BACKGROUNDS) ---
const BG_BLACK = "res://assety/Noraneko_Backgrounds_Old/Noraneko_Backgrounds_Old/Zrzut ekranu 2026-10-01 203456.png"
const BG_STREET = "res://assety/Noraneko_Backgrounds_Pack_2/Street_Autumn_Day.png"
const BG_SCHOOL_GATE = "res://assety/Noraneko_Backgrounds_Old/Noraneko_Backgrounds_Old/Old_School.png"
const BG_CAFETERIA = "res://assety/Noraneko_Backgrounds_Pack_2/Cafeteria_Day.png"
const BG_CLASSROOM = "res://assety/Noraneko_Backgrounds_Pack_2/Classroom_Day.png"
const BG_HALLWAY = "res://assety/Noraneko_Backgrounds_Pack_2/School_Hallway_Day.png"
const BG_COURTYARD = "res://assety/Noraneko_Backgrounds_Old/Noraneko_Backgrounds_Old/anime-landscape-school-balcony-wallpaper-preview.jpg"

# --- ŚCIEŻKI DO SPRAJTÓW POSTACI (SPRITES) ---
const SPRITE_NONE = "res://sprites/empty.png" # Puste tło gdy brak postaci
const SPRITE_IGOR = "res://sprites/igor.png"
const SPRITE_ADAM = "res://sprites/adam.png"
const SPRITE_PLOTKARZ = "res://sprites/plotkarz.png"
const SPRITE_STASIU = "res://sprites/stasiu.png"
const SPRITE_JAKUB = "res://sprites/jakub.png"
const SPRITE_PRZYJACIEL = "res://sprites/przyjaciel.png"
const SPRITE_NOWY = "res://sprites/nowy.png"

var krok = 0
@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D
@onready var tlo: TextureRect = $tlo  # Zamieniono na TextureRect dla automatycznego skalowania teł

var dialognumer = 0

func konwersacja(ktogada: String, ikonka: String, background: String):
	zdjdial.texture = load(ikonka)
	tlo.texture = load(background)
	Global.dialog_text.text = ktogada

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	Global.dialog_text = dialogi
	dialogi.add_theme_font_size_override("font_size", 48)
	
	# Automatyczny start sceny po załadowaniu
	dialognumer = 1
	krok = 0
	self.show()
	get_tree().paused = true
	# SCENA 1 — START AUTOMATYCZNY
	konwersacja("PONIEDZIAŁEK — 7:42", SPRITE_NONE, BG_BLACK)

func _unhandled_input(event: InputEvent) -> void:
	if dialognumer == 1 and event.is_action_pressed("ui_accept") and not event.is_echo():
		gadanko1()

func gadanko1():
	krok += 1
	
	# SCENA 1 — PONIEDZIAŁEK
	if krok == 1:
		konwersacja("IGOR-SAN: Poniedziałek. Dzień, w którym człowiek zastanawia się, po co w ogóle istnieją szkoły.", SPRITE_IGOR, BG_STREET)
	elif krok == 2:
		konwersacja("ADAM-KUN: Igor-saaaaan ❤️ Nie zapomnij, że dzisiaj po lekcjach jesteśmy umówieni!", SPRITE_ADAM, BG_STREET)
	elif krok == 3:
		konwersacja("IGOR-SAN: Jak mógłbym zapomnieć? Jesteś moją dziewczyną.", SPRITE_IGOR, BG_STREET)
	elif krok == 4:
		konwersacja("ADAM-KUN: Hehe ❤️", SPRITE_ADAM, BG_STREET)
	elif krok == 5:
		konwersacja("IGOR-SAN: ... To 'hehe' zabrzmiało podejrzanie.", SPRITE_IGOR, BG_STREET)
		
	# SCENA 2 — WEJŚCIE DO SZKOŁY
	elif krok == 6:
		konwersacja("PLOTKARZ: Igor!", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 7:
		konwersacja("IGOR-SAN: Siema.", SPRITE_IGOR, BG_SCHOOL_GATE)
	elif krok == 8:
		konwersacja("PLOTKARZ: Nadal jesteś z Adam-kun?", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 9:
		konwersacja("IGOR-SAN: Tak?", SPRITE_IGOR, BG_SCHOOL_GATE)
	elif krok == 10:
		konwersacja("PLOTKARZ: Aha.", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 11:
		konwersacja("IGOR-SAN: Dlaczego pytasz?", SPRITE_IGOR, BG_SCHOOL_GATE)
	elif krok == 12:
		konwersacja("PLOTKARZ: Z ciekawości.", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 13:
		konwersacja("IGOR-SAN: Wyglądasz, jakbyś wiedział coś, czego ja nie wiem.", SPRITE_IGOR, BG_SCHOOL_GATE)
	elif krok == 14:
		konwersacja("PLOTKARZ: Nie wiem nic. Absolutnie nic.", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 15:
		konwersacja("PLOTKARZ: Miłego dnia. (ucieka)", SPRITE_PLOTKARZ, BG_SCHOOL_GATE)
	elif krok == 16:
		konwersacja("IGOR-SAN: Co było z tym człowiekiem?", SPRITE_IGOR, BG_SCHOOL_GATE)
		
	# SCENA 3 — STOŁÓWKA
	elif krok == 17:
		konwersacja("STASIU ARIGATO: Arigato.", SPRITE_STASIU, BG_CAFETERIA)
	elif krok == 18:
		konwersacja("IGOR-SAN: Dzień dobry?", SPRITE_IGOR, BG_CAFETERIA)
	elif krok == 19:
		konwersacja("STASIU ARIGATO: Arigato.", SPRITE_STASIU, BG_CAFETERIA)
	elif krok == 20:
		konwersacja("IGOR-SAN: Ty zawsze tak mówisz?", SPRITE_IGOR, BG_CAFETERIA)
	elif krok == 21:
		konwersacja("STASIU ARIGATO: Nie. Czasami mówię 'dziękuję'.", SPRITE_STASIU, BG_CAFETERIA)
	elif krok == 22:
		konwersacja("IGOR-SAN: ... Dobrze wiedzieć.", SPRITE_IGOR, BG_CAFETERIA)
	elif krok == 23:
		konwersacja("Wiadomość na telefonie Stasia od ADAM-KUN ❤️: 'Wczoraj było naprawdę fajnie. ❤️'", SPRITE_STASIU, BG_CAFETERIA)
	elif krok == 24:
		konwersacja("STASIU ARIGATO: To nie jest to, co myślisz.", SPRITE_STASIU, BG_CAFETERIA)
	elif krok == 25:
		konwersacja("IGOR-SAN: Nie powiedziałem, co myślę.", SPRITE_IGOR, BG_CAFETERIA)
	elif krok == 26:
		konwersacja("STASIU ARIGATO: Wiem. Arigato.", SPRITE_STASIU, BG_CAFETERIA)
		
	# SCENA 4 — ŚLEDZTWO
	elif krok == 27:
		konwersacja("IGOR-SAN: Dobra. Spokojnie. Adam-kun jest moją dziewczyną. Stasiu jest... Stasiem.", SPRITE_IGOR, BG_CLASSROOM)
	elif krok == 28:
		konwersacja("IGOR-SAN: Jaki projekt wymaga pisania 'wczoraj było naprawdę fajnie'? Muszę zapapytać Adam-kun.", SPRITE_IGOR, BG_CLASSROOM)
		
	# SCENA 5 — ADAM-KUN
	elif krok == 29:
		konwersacja("IGOR-SAN: Adam-kun. Masz coś wspólnego ze Stasiem?", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 30:
		konwersacja("ADAM-KUN: Ze Stasiem? Nie. Na pewno.", SPRITE_ADAM, BG_HALLWAY)
	elif krok == 31:
		konwersacja("IGOR-SAN: To dlaczego do niego pisałaś?", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 32:
		konwersacja("ADAM-KUN: Bo... pomaga mi z matematyką.", SPRITE_ADAM, BG_HALLWAY)
	elif krok == 33:
		konwersacja("IGOR-SAN: Stasiu ledwo zdał matematykę.", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 34:
		konwersacja("ADAM-KUN: Ale jest bardzo dobry w tłumaczeniu.", SPRITE_ADAM, BG_HALLWAY)
	elif krok == 35:
		konwersacja("IGOR-SAN: ... Dobra. Nie mam pytań.", SPRITE_IGOR, BG_HALLWAY)
		
	# SCENA 6 — JAKUB-SAMA
	elif krok == 36:
		konwersacja("JAKUB-SAMA: Igor-san. Możemy porozmawiać?", SPRITE_JAKUB, BG_HALLWAY)
	elif krok == 37:
		konwersacja("IGOR-SAN: Jasne.", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 38:
		konwersacja("JAKUB-SAMA: Chodzi o Adam-kun. Adam-kun nie mówi ci wszystkiego. Spotyka się ze mną.", SPRITE_JAKUB, BG_HALLWAY)
	elif krok == 39:
		konwersacja("JAKUB-SAMA: Od dwóch tygodni. Przepraszam.", SPRITE_JAKUB, BG_HALLWAY)
	elif krok == 40:
		konwersacja("IGOR-SAN: Czekaj. Co?!", SPRITE_IGOR, BG_HALLWAY)
		
	# SCENA 7 — PODWÓJNA ZDRADA
	elif krok == 41:
		konwersacja("IGOR-SAN: Stasiu! Czy ty też spotykasz się z Adam-kun?!", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 42:
		konwersacja("STASIU ARIGATO: Tak. Przepraszam.", SPRITE_STASIU, BG_HALLWAY)
	elif krok == 43:
		konwersacja("IGOR-SAN: Od jak dawna?!", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 44:
		konwersacja("STASIU ARIGATO: Trzy tygodnie.", SPRITE_STASIU, BG_HALLWAY)
	elif krok == 45:
		konwersacja("IGOR-SAN: TRZY?!", SPRITE_IGOR, BG_HALLWAY)
	elif krok == 46:
		konwersacja("STASIU ARIGATO: Arigato.", SPRITE_STASIU, BG_HALLWAY)
	elif krok == 47:
		konwersacja("IGOR-SAN: NIE MÓW TERAZ 'ARIGATO'!", SPRITE_IGOR, BG_HALLWAY)
		
	# SCENA 8 — IGOR SAN TRACI ROZUM
	elif krok == 48:
		konwersacja("IGOR-SAN: Moja dziewczyna ma mnie. Ma Jakuba. I Stasia. Один, Dwa, Trzy, Cztery... Dlaczego ja jestem czwarty?!", SPRITE_IGOR, BG_COURTYARD)
	elif krok == 49:
		konwersacja("PRZYJACIEL: Wszystko okej? Adam-kun? W tej szkole każdy wie. Chcesz kanapkę?", SPRITE_PRZYJACIEL, BG_COURTYARD)
	elif krok == 50:
		konwersacja("IGOR-SAN: Tak. Z serem?", SPRITE_IGOR, BG_COURTYARD)
	elif krok == 51:
		konwersacja("PRZYJACIEL: Tak. Też kiedyś zostałem zdradzony. Kanapka była z szynką. Nigdy jej nie wybaczyłem.", SPRITE_PRZYJACIEL, BG_COURTYARD)
		
	# SCENA 9 & 10 — KONFRONTACJA I TAJEMNICA
	elif krok == 52:
		konwersacja("IGOR-SAN: Musimy porozmawiać. O Stasiu i Jakubie.", SPRITE_IGOR, BG_CLASSROOM)
	elif krok == 53:
		konwersacja("ADAM-KUN: Wiem. Mogę ci to wyjaśnić, ale musisz obiecać, że mnie wysłuchasz.", SPRITE_ADAM, BG_CLASSROOM)
	elif krok == 54:
		konwersacja("IGOR-SAN: Zależy, czy to wyjaśnienie będzie miało jakikolwiek sens.", SPRITE_IGOR, BG_CLASSROOM)
	elif krok == 55:
		konwersacja("ADAM-KUN: Igor-san... To nie zaczęło się tak, jak myślisz. Jakub-sama i Stasiu poznali mnie przez...", SPRITE_ADAM, BG_CLASSROOM)
	elif krok == 56:
		konwersacja("PLOTKARZ: ADAM-KUN! Znaleźliśmy go.", SPRITE_PLOTKARZ, BG_CLASSROOM)
	elif krok == 57:
		konwersacja("JAKUB-SAMA: Człowieka, przez którego to wszystko się zaczęło.", SPRITE_JAKUB, BG_CLASSROOM)
	elif krok == 58:
		konwersacja("STASIU ARIGATO: Arigato.", SPRITE_STASIU, BG_CLASSROOM)
	elif krok == 59:
		konwersacja("IGOR-SAN: Stasiu. Jeśli teraz powiesz 'arigato', wychodzę.", SPRITE_IGOR, BG_CLASSROOM)
	elif krok == 60:
		konwersacja("STASIU ARIGATO: ... Dobrze.", SPRITE_STASIU, BG_CLASSROOM)
		
	# SCENA 11 — CLIFFHANGER
	elif krok == 61:
		konwersacja("TAJEMNICZA POSTAĆ: Igor-san.", SPRITE_NOWY, BG_CLASSROOM)
	elif krok == 62:
		konwersacja("IGOR-SAN: Znamy się?", SPRITE_IGOR, BG_CLASSROOM)
	elif krok == 63:
		konwersacja("TAJEMNICZA POSTAĆ: Jeszcze nie. Ale wszyscy o tobie mówią. Szczególnie Adam-kun.", SPRITE_NOWY, BG_CLASSROOM)
	elif krok == 64:
		konwersacja("TAJEMNICZA POSTAĆ: Myślę, że czas powiedzieć Igor-sanowi prawdę.", SPRITE_NOWY, BG_CLASSROOM)
	elif krok == 65:
		konwersacja("KONIEC PIERWSZEGO DNIA. JUTRO: PRAWDA O ADAM-KUN", SPRITE_NONE, BG_BLACK)
		
	# ZAKOŃCZENIE DEMO
	elif krok == 66:
		konwersacja("KONIEC", SPRITE_NONE, BG_BLACK)
		
	# ZAMKNIĘCIE DIALOGU
	elif krok >= 67:
		self.hide()
		get_tree().paused = false
		dialognumer = 2
		krok = 0
