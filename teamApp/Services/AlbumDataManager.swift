//
//  AlbumDataManager.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

class AlbumDataManager {
    static let shared = AlbumDataManager()
    
    let artistsAlbums = ["Sting": [ "The Dream of the Blue Turtles",
                   "Nothing Like the Sun",
                   "The Soul Cages"],
                   "Joe Cocker": ["With a Little Help from My Friends",
                                  "Joe Cocker!",
                                  "Joe Cocker - 1972"],
                   "Queen": ["Early Queen Tours",
                             "Queen I Tour",
                             "Queen II Tour"]]
    
    let shortInfo = ["Sting": "Born: Gordon Matthew Thomas Sumner, 2 October 1951 (age 69), Wallsend, Northumberland, England. Years active: 1971–present. Musical career - Genres: Rockpopnew wavepost-punkskareggaejazzworldsoft rock. Website: sting.com",
                     "Queen": "Origin: London, England. Genres: Rock. Website: queenonline.com . Members: Brian May, Roger Taylor. Past members: Freddie Mercury, John Deacon.",
                     "Joe Cocker": "Birth name: John Robert Cocker. Born: 20 May 1944, Sheffield, West Riding of Yorkshire, England. Died: 22 December 2014 (aged 70). Crawford, Colorado, United States. Genres: Rock, blues, soul, pop. Years active: 1961–2014. Website: www.cocker.com", ]
   
    let descrOnAlbum = ["The Dream of the Blue Turtles": "The Dream of the Blue Turtles (с англ. — Сон о синих черепахах) — дебютный сольный альбом британского рок-музыканта Стинга, был выпущен в США 1 июня 1985 года, через год после неофициального расформирования группы The Police. Хотя он был менее успешным, чем любой из альбомов The Police, ему удалось достичь третьего места в британском хит-параде.",
                        "Nothing Like the Sun": "…Nothing Like the Sun (с англ. — …Совсем не похоже на солнце) — второй студийный альбом британского рок-музыканта Стинга, был издан 13 октября 1987 года. Название для пластинки было навеяно строчкой из 130-го сонета Уильяма Шекспира (My mistress' eyes are nothing like the sun — Глаза моей возлюбленной совсем не похожи на солнце), которую Стинг также использовал в песне Sister Moon.",
                        "The Soul Cages": "The Soul Cages (рус. Клетки для души) — третий студийный альбом британского рок-музыканта Стинга, был выпущен 22 января 1991 года. Он стал вторым альбомом певца, который достиг вершины национального чарта на его родине.",
                        "With a Little Help from My Friends": "With a Little Help from My Friends (рус. С небольшой помощью моих друзей) — песня группы The Beatles из альбома Sgt. Pepper's Lonely Hearts Club Band, написанная Джоном Ленноном и Полом Маккартни в 1967 году специально для Ринго Старра. Песня плавно вытекает из предыдущей. Изначальное название песни — Bad Finger Boogie — позже дало имя рок-группе Badfinger, до этого известной как The Iveys.",
                        "Joe Cocker!": "Это второй альбом Кокера на Capitol Records. Запись проходила в Лондоне, Мемфисе, Нью-Йорке и Лос-Анджелесе. Критики отметили песни Shelter Me, You Can Leave Your Hat On, Inner City Blues, но сочли, что обилие продюсеров мало повлияло на звучание альбомов певца — тот же мягкий синтезаторный расплывчатый взрослый саунд.",
                        "oe Cocker - 1972": "Четырнадцатый студийный альбом британского певца Джо Кокера, выпущенный в 1994 году.                    Тони Джо Уайт, автор и первый исполнитель Let the Healing Begin и Angeline, сыграл на электрогитаре для обоих треков.",
                        "Early Queen Tours": "Группа выпустила дебютный одноимённый альбом, в который была включена песня трио Smile Doing All Right. Однако ставку музыканты сделали на песню Keep Yourself Alive, выпустив её дебютным синглом (1973). Этот альбом записывался параллельно с учёбой участников группы в течение двух лет — в те моменты, когда студия звукозаписи была свободна.",
                        "Queen I Tour": "Самой известной песней этого альбома является Bohemian Rhapsody — длинная шестиминутная композиция, соединившая в себе элементы рок- и поп-музыки, оперы и отдельные мотивы фольклора. Стандартной в те годы считалась трёхминутная песня, но Queen создали шестиминутную песню и сумели отправить её в радиоэфир.",
                        "Queen II Tour": "В октябре 1977 года вышла пластинка News of the World, в которой Queen впервые сделали шаг от сложных гармоний арт-рока в сторону упрощения и сдержанности звучания. Этот диск принёс группе три суперхита: We Will Rock You, Spread Your Wings и We Are the Champions, но в остальном был не столь успешен, дошёл до четвёртой строчки в Великобритании и третьей в США." ]
    
    
    private init() { }
}
