//
//  PreviewData.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import Foundation
import SwiftData

enum PreviewData {
    static let sampleDreams: [Dream] = [
        Dream(
            title: "Cadere nel vuoto",
            content: "Mi trovavo su un grattacielo e all’improvviso sono cominciato a cadere nel vuoto, una sensazione terribile.",
            date: Date(timeIntervalSinceNow: -86400 * 1),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Volare sopra la città",
            content: "Ero in grado di volare liberamente sopra la mia città, vedendo tutto il panorama illuminato dalle luci notturne.",
            date: Date(timeIntervalSinceNow: -86400 * 2),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Inseguito da un'ombra",
            content: "Un'ombra senza forma mi inseguiva attraverso vicoli bui e stretti. Non riuscivo a seminarla.",
            date: Date(timeIntervalSinceNow: -86400 * 4),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Conversazione con un delfino",
            content: "Nuotavo nell'oceano e un delfino ha iniziato a parlarmi con una voce saggia e antica.",
            date: Date(timeIntervalSinceNow: -86400 * 8),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Perdere i denti",
            content: "Mi guardavo allo specchio e i miei denti cominciavano a cadere uno dopo l'altro.",
            date: Date(timeIntervalSinceNow: -86400 * 12),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Casa d'infanzia",
            content: "Sono tornato nella mia casa d'infanzia, ma tutte le stanze erano diverse e non riconoscevo nulla.",
            date: Date(timeIntervalSinceNow: -86400 * 17),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Esame a sorpresa",
            content: "Ero a scuola e il professore ha annunciato un esame a sorpresa di una materia che non avevo mai studiato.",
            date: Date(timeIntervalSinceNow: -86400 * 21),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Cena con personaggi storici",
            content: "Ero a una cena elegante con Leonardo da Vinci e Cleopatra. Abbiamo parlato di arte e politica.",
            date: Date(timeIntervalSinceNow: -86400 * 25),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "La foresta incantata",
            content: "Camminavo in una foresta dove gli alberi avevano foglie d'argento e i fiori brillavano al buio.",
            date: Date(timeIntervalSinceNow: -86400 * 30),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Essere invisibile",
            content: "Ho scoperto di essere diventato invisibile e ho passato la giornata a osservare le persone non visto.",
            date: Date(timeIntervalSinceNow: -86400 * 33),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Treno senza fermate",
            content: "Ero su un treno ad alta velocità che non si fermava mai, attraversando paesaggi surreali.",
            date: Date(timeIntervalSinceNow: -86400 * 37),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "L'urlo silenzioso",
            content: "Cercavo di urlare per chiedere aiuto, ma dalla mia bocca non usciva alcun suono.",
            date: Date(timeIntervalSinceNow: -86400 * 40),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Un pianoforte sulla spiaggia",
            content: "Ho trovato un pianoforte a coda sulla riva del mare e ho iniziato a suonare mentre le onde si infrangevano.",
            date: Date(timeIntervalSinceNow: -86400 * 45),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Città sommersa",
            content: "Esploravo le rovine di una magnifica città sommersa, piena di statue e templi antichi.",
            date: Date(timeIntervalSinceNow: -86400 * 50),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Essere in ritardo",
            content: "Dovevo prendere un aereo importante ma tutto sembrava cospirare per farmi arrivare in ritardo.",
            date: Date(timeIntervalSinceNow: -86400 * 53),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Parlare con gli animali",
            content: "Tutti gli animali del bosco potevano parlare e mi raccontavano i segreti della natura.",
            date: Date(timeIntervalSinceNow: -86400 * 58),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Labirinto di specchi",
            content: "Ero intrappolato in un labirinto infinito di specchi e non riuscivo a trovare l'uscita.",
            date: Date(timeIntervalSinceNow: -86400 * 62),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Il deserto di cristallo",
            content: "Attraversavo un deserto dove la sabbia era fatta di finissimi cristalli colorati che brillavano al sole.",
            date: Date(timeIntervalSinceNow: -86400 * 66),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Respirare sott'acqua",
            content: "Mi sono tuffato nell'oceano e mi sono reso conto che potevo respirare sott'acqua come un pesce.",
            date: Date(timeIntervalSinceNow: -86400 * 70),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Bloccato in ascensore",
            content: "L'ascensore si è bloccato tra due piani e le luci si sono spente. Ero completamente solo al buio.",
            date: Date(timeIntervalSinceNow: -86400 * 75),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Vincere alla lotteria",
            content: "Ho controllato il mio biglietto della lotteria e avevo vinto il primo premio. Una gioia immensa.",
            date: Date(timeIntervalSinceNow: -86400 * 80),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Un pic-nic sulla luna",
            content: "Ero seduto su una coperta sulla superficie lunare, mangiando un panino e guardando la Terra.",
            date: Date(timeIntervalSinceNow: -86400 * 84),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Non riuscire a correre",
            content: "Qualcosa mi inseguiva, ma le mie gambe erano pesantissime e riuscivo a muovermi solo al rallentatore.",
            date: Date(timeIntervalSinceNow: -86400 * 88),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Scrivere un libro in una notte",
            content: "Mi sono seduto alla scrivania e le parole fluivano da sole. Ho scritto un intero romanzo in una sola notte.",
            date: Date(timeIntervalSinceNow: -86400 * 92),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "La biblioteca infinita",
            content: "Mi sono perso in una biblioteca che si estendeva all'infinito, con scaffali pieni di libri mai visti.",
            date: Date(timeIntervalSinceNow: -86400 * 96),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Nudo in pubblico",
            content: "Mi sono ritrovato improvvisamente nudo in una piazza affollata. Tutti mi guardavano e ridevano.",
            date: Date(timeIntervalSinceNow: -86400 * 100),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Incontro con un alieno",
            content: "Un'astronave è atterrata nel mio giardino e un alieno amichevole è sceso per fare conoscenza.",
            date: Date(timeIntervalSinceNow: -86400 * 105),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Riparare un orologio rotto",
            content: "Stavo riparando un vecchio orologio da taschino e quando l'ho fatto ripartire, il tempo si è fermato.",
            date: Date(timeIntervalSinceNow: -86400 * 110),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Il mondo sottosopra",
            content: "Mi sono svegliato e tutto era al contrario. La gente camminava sul soffitto e la pioggia cadeva verso l'alto.",
            date: Date(timeIntervalSinceNow: -86400 * 115),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Guidare un'auto d'epoca",
            content: "Stavo guidando una decappottabile rossa fiammante su una strada costiera al tramonto.",
            date: Date(timeIntervalSinceNow: -86400 * 120),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Perdersi nel proprio quartiere",
            content: "Stavo camminando nel mio quartiere ma tutte le strade erano diverse e non riuscivo più a trovare la via di casa.",
            date: Date(timeIntervalSinceNow: -86400 * 123),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Un concerto privato",
            content: "La mia band preferita stava suonando un concerto solo per me nel mio salotto.",
            date: Date(timeIntervalSinceNow: -86400 * 126),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Le pareti si stringono",
            content: "Ero in una stanza e le pareti hanno iniziato a stringersi, lasciandomi sempre meno spazio.",
            date: Date(timeIntervalSinceNow: -86400 * 129),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Trovare un tesoro",
            content: "Ho seguito una vecchia mappa e ho trovato un forziere pieno di monete d'oro e gioielli.",
            date: Date(timeIntervalSinceNow: -86400 * 132),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Essere un gigante",
            content: "Ero un gigante e camminavo tra le città, con i grattacieli che mi arrivavano alle ginocchia.",
            date: Date(timeIntervalSinceNow: -86400 * 135),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Il telefono non funziona",
            content: "Dovevo fare una chiamata urgente, ma ogni volta che componevo il numero, sentivo solo strani rumori.",
            date: Date(timeIntervalSinceNow: -86400 * 138),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Neve in estate",
            content: "Era una calda giornata di luglio, ma ha iniziato a nevicare abbondantemente, coprendo tutto di bianco.",
            date: Date(timeIntervalSinceNow: -86400 * 141),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Un ballo in maschera",
            content: "Partecipavo a un elegante ballo in maschera in un castello, ma non riuscivo a riconoscere nessuno.",
            date: Date(timeIntervalSinceNow: -86400 * 144),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "In trappola in un quadro",
            content: "Sono stato risucchiato dentro un dipinto e sono diventato parte del paesaggio.",
            date: Date(timeIntervalSinceNow: -86400 * 147),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Viaggio nel tempo",
            content: "Ho viaggiato indietro nel tempo fino al medioevo e ho assistito a un torneo di cavalieri.",
            date: Date(timeIntervalSinceNow: -86400 * 150),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "La casa si allaga",
            content: "L'acqua ha iniziato a entrare in casa da sotto la porta, allagando tutto rapidamente.",
            date: Date(timeIntervalSinceNow: -86400 * 152),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Diventare un supereroe",
            content: "Ho scoperto di avere il superpotere di controllare il meteo e ho salvato la città da un tornado.",
            date: Date(timeIntervalSinceNow: -86400 * 154),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Un giardino segreto",
            content: "Ho trovato una piccola porta in un muro che conduceva a un meraviglioso giardino segreto.",
            date: Date(timeIntervalSinceNow: -86400 * 156),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Mani di burro",
            content: "Qualsiasi cosa cercassi di afferrare, mi scivolava dalle mani come se fossero fatte di burro.",
            date: Date(timeIntervalSinceNow: -86400 * 158),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Costruire una capanna sull'albero",
            content: "Ho passato un'intera giornata a costruire la capanna sull'albero perfetta con i miei amici d'infanzia.",
            date: Date(timeIntervalSinceNow: -86400 * 160),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Il pavimento è lava",
            content: "Ero a casa ma il pavimento si era trasformato in lava incandescente. Dovevo saltare sui mobili per non cadere.",
            date: Date(timeIntervalSinceNow: -86400 * 162),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Una cascata di cioccolato",
            content: "Ho trovato una cascata gigante fatta interamente di cioccolato fuso in cui potevo tuffarmi.",
            date: Date(timeIntervalSinceNow: -86400 * 164),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Essere un detective",
            content: "Stavo investigando su un caso complicato in una città noir, con tanto di impermeabile e cappello.",
            date: Date(timeIntervalSinceNow: -86400 * 166),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Il tempo scorre all'indietro",
            content: "Tutto intorno a me ha iniziato a muoversi all'indietro. Le persone camminavano a ritroso e le parole uscivano al contrario.",
            date: Date(timeIntervalSinceNow: -86400 * 168),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Scalare una montagna di libri",
            content: "Per raggiungere la cima di una montagna, dovevo scalare una pila altissima di libri antichi.",
            date: Date(timeIntervalSinceNow: -86400 * 170),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Ritrovare un amico perduto",
            content: "Ho incontrato per caso un vecchio amico che non vedevo da anni. È stato un momento molto emozionante.",
            date: Date(timeIntervalSinceNow: -86400 * 171),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "La foresta di funghi giganti",
            content: "Camminavo in una foresta dove i funghi erano alti come alberi, creando un paesaggio colorato e bizzarro.",
            date: Date(timeIntervalSinceNow: -86400 * 172),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Vedere il futuro in uno specchio",
            content: "Guardandomi allo specchio, invece del mio riflesso vedevo immagini del mio futuro.",
            date: Date(timeIntervalSinceNow: -86400 * 173),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Perdere la voce",
            content: "Ero su un palco e dovevo tenere un discorso importante, ma quando ho aperto la bocca non avevo più la voce.",
            date: Date(timeIntervalSinceNow: -86400 * 174),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Dipingere le nuvole",
            content: "Volavo nel cielo con un pennello e un secchio di vernice, e dipingevo le nuvole di diversi colori.",
            date: Date(timeIntervalSinceNow: -86400 * 175),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Fuggire da un vulcano",
            content: "Un vulcano ha iniziato a eruttare all'improvviso e dovevo correre per mettermi in salvo dalla lava.",
            date: Date(timeIntervalSinceNow: -86400 * 176),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Un picnic con gli orsi",
            content: "Stavo facendo un picnic nel bosco e una famiglia di orsi si è unita a me, condividendo il mio cibo pacificamente.",
            date: Date(timeIntervalSinceNow: -86400 * 177),
            isNightmare: false,
            isFavorite: false
        ),
        Dream(
            title: "Le stelle cadono dal cielo",
            content: "Guardavo il cielo notturno e le stelle hanno iniziato a cadere come una pioggia luminosa.",
            date: Date(timeIntervalSinceNow: -86400 * 178),
            isNightmare: false,
            isFavorite: true
        ),
        Dream(
            title: "Essere l'ultimo uomo sulla Terra",
            content: "Mi sono svegliato e ho scoperto di essere l'unica persona rimasta sulla Terra. Un silenzio assordante.",
            date: Date(timeIntervalSinceNow: -86400 * 179),
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Navigare su una nave vichinga",
            content: "Ero un esploratore vichingo e navigavo su un drakkar attraverso mari in tempesta verso terre sconosciute.",
            date: Date(timeIntervalSinceNow: -86400 * 180),
            isNightmare: false,
            isFavorite: false
        )
    ]

    static func makeModelContainer(
        for entities: [any PersistentModel.Type] = [Dream.self],
        withSampleData: Bool = true
    ) -> ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let schema = Schema(entities)
        let container = try! ModelContainer(for: schema, configurations: config)

        if withSampleData {
            let modelContext = ModelContext(container)
            for dream in sampleDreams {
                modelContext.insert(dream)
            }
            try! modelContext.save()
        }

        return container
    }
}
