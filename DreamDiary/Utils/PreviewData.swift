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
            isFavorite: false,
            score: -0.8
        ),
        Dream(
            title: "Volare sopra la città",
            content: "Librarsi senza peso sopra i tetti, vedendo le luci della città come un tappeto di stelle.",
            date: Date(timeIntervalSinceNow: -86400 * 1),
            isNightmare: false,
            isFavorite: true,
            score: 0.9
        ),
        Dream(
            title: "Esame a sorpresa",
            content: "Ero di nuovo a scuola, impreparato per un esame di una materia che non ricordavo nemmeno di seguire.",
            date: Date(timeIntervalSinceNow: -86400 * 2),
            isNightmare: true,
            isFavorite: false,
            score: -0.6
        ),
        Dream(
            title: "Spiaggia al tramonto",
            content: "Camminavo su una spiaggia deserta, con il cielo dipinto di arancione e viola. Una pace incredibile.",
            date: Date(timeIntervalSinceNow: -86400 * 3),
            isNightmare: false,
            isFavorite: true,
            score: 1.0
        ),
        Dream(
            title: "Inseguito nei vicoli",
            content: "Un'ombra mi inseguiva in un labirinto di vicoli stretti. Correvo senza fiato, senza mai seminarla.",
            date: Date(timeIntervalSinceNow: -86400 * 4),
            isNightmare: true,
            isFavorite: false,
            score: -0.9
        ),
        Dream(
            title: "Conversazione con un gatto",
            content: "Il mio gatto ha iniziato a parlarmi, dandomi saggi consigli sulla vita con un tono molto serio.",
            date: Date(timeIntervalSinceNow: -86400 * 5),
            isNightmare: false,
            isFavorite: false,
            score: 0.5
        ),
        Dream(
            title: "Perdere i denti",
            content: "Mi toccavo la bocca e sentivo i denti sgretolarsi e cadere. Un classico incubo.",
            date: Date(timeIntervalSinceNow: -86400 * 6),
            isNightmare: true,
            isFavorite: false,
            score: -0.7
        ),
        Dream(
            title: "Casa d'infanzia",
            content: "Sono tornato nella mia vecchia casa, ma le stanze erano diverse, più grandi e sconosciute.",
            date: Date(timeIntervalSinceNow: -86400 * 8),
            isNightmare: false,
            isFavorite: false,
            score: 0.2
        ),
        Dream(
            title: "Respirare sott'acqua",
            content: "Nuotavo in un mare cristallino e mi sono reso conto di poter respirare tranquillamente sott'acqua.",
            date: Date(timeIntervalSinceNow: -86400 * 10),
            isNightmare: false,
            isFavorite: true,
            score: 0.8
        ),
        Dream(
            title: "Non riuscire a correre",
            content: "Cercavo di scappare da qualcosa, ma le mie gambe si muovevano al rallentatore, come nella melassa.",
            date: Date(timeIntervalSinceNow: -86400 * 12),
            isNightmare: true,
            isFavorite: false,
            score: -0.8
        ),
        Dream(
            title: "La foresta incantata",
            content: "Camminavo in una foresta dove gli alberi avevano foglie luminose e i fiori cantavano.",
            date: Date(timeIntervalSinceNow: -86400 * 14),
            isNightmare: false,
            isFavorite: false,
            score: 0.7
        ),
        Dream(
            title: "Treno senza fermate",
            content: "Ero su un treno ad alta velocità che non si fermava mai, attraversando paesaggi surreali e città futuristiche.",
            date: Date(timeIntervalSinceNow: -86400 * 16),
            isNightmare: false,
            isFavorite: false,
            score: 0.3
        ),
        Dream(
            title: "Essere invisibile",
            content: "Ho scoperto di essere invisibile e ho passato la giornata a osservare le persone non visto.",
            date: Date(timeIntervalSinceNow: -86400 * 18),
            isNightmare: false,
            isFavorite: false,
            score: 0.6
        ),
        Dream(
            title: "L'urlo silenzioso",
            content: "Cercavo di urlare per chiedere aiuto ma dalla mia bocca non usciva alcun suono.",
            date: Date(timeIntervalSinceNow: -86400 * 20),
            isNightmare: true,
            isFavorite: false,
            score: -0.9
        ),
        Dream(
            title: "Un concerto privato",
            content: "La mia band preferita stava suonando un concerto solo per me nel mio salotto.",
            date: Date(timeIntervalSinceNow: -86400 * 22),
            isNightmare: false,
            isFavorite: true,
            score: 0.9
        ),
        Dream(
            title: "Città sommersa",
            content: "Esploravo le rovine di una magnifica città sottomarina, piena di coralli e pesci colorati.",
            date: Date(timeIntervalSinceNow: -86400 * 25),
            isNightmare: false,
            isFavorite: false,
            score: 0.6
        ),
        Dream(
            title: "Perdersi nel proprio quartiere",
            content: "Le strade del mio quartiere erano tutte cambiate e non riuscivo più a trovare la via di casa.",
            date: Date(timeIntervalSinceNow: -86400 * 28),
            isNightmare: true,
            isFavorite: false,
            score: -0.5
        ),
        Dream(
            title: "Cena con personaggi storici",
            content: "Ero a tavola con Leonardo da Vinci e Cleopatra. Una conversazione decisamente interessante.",
            date: Date(timeIntervalSinceNow: -86400 * 31),
            isNightmare: false,
            isFavorite: false,
            score: 0.7
        ),
        Dream(
            title: "Vincere alla lotteria",
            content: "Controllavo i numeri e mi rendevo conto di aver vinto il jackpot. Una gioia travolgente.",
            date: Date(timeIntervalSinceNow: -86400 * 34),
            isNightmare: false,
            isFavorite: true,
            score: 1.0
        ),
        Dream(
            title: "Il pavimento è lava",
            content: "Ero a casa ma il pavimento era diventato lava incandescente. Dovevo saltare sui mobili per salvarmi.",
            date: Date(timeIntervalSinceNow: -86400 * 37),
            isNightmare: true,
            isFavorite: false,
            score: -0.4
        ),
        Dream(
            title: "Parlare con gli animali",
            content: "Tutti gli animali del bosco potevano parlare e mi raccontavano i segreti della natura.",
            date: Date(timeIntervalSinceNow: -86400 * 40),
            isNightmare: false,
            isFavorite: false,
            score: 0.8
        ),
        Dream(
            title: "Labirinto di specchi",
            content: "Ero intrappolato in un labirinto infinito di specchi, vedendo il mio riflesso ovunque ma senza trovare l'uscita.",
            date: Date(timeIntervalSinceNow: -86400 * 44),
            isNightmare: true,
            isFavorite: false,
            score: -0.7
        ),
        Dream(
            title: "Viaggio nel tempo",
            content: "Mi sono ritrovato nel Medioevo, durante un torneo di cavalieri. I colori e i suoni erano incredibilmente vividi.",
            date: Date(timeIntervalSinceNow: -86400 * 48),
            isNightmare: false,
            isFavorite: false,
            score: 0.5
        ),
        Dream(
            title: "Nudo in pubblico",
            content: "Improvvisamente mi sono reso conto di essere in una piazza affollata, ma completamente nudo. Imbarazzante.",
            date: Date(timeIntervalSinceNow: -86400 * 52),
            isNightmare: true,
            isFavorite: false,
            score: -0.6
        ),
        Dream(
            title: "Un picnic sulla luna",
            content: "Ero seduto su una coperta sulla superficie lunare, mangiando un panino e guardando la Terra sospesa nel cielo.",
            date: Date(timeIntervalSinceNow: -86400 * 56),
            isNightmare: false,
            isFavorite: true,
            score: 0.9
        ),
        // ... continue generation for the rest of the months
        Dream(
            title: "La biblioteca infinita",
            content: "Mi sono perso in una biblioteca che si estendeva all'infinito, con scaffali pieni di libri mai visti.",
            date: Date(timeIntervalSinceNow: -86400 * 60),
            isNightmare: false,
            isFavorite: false,
            score: 0.7
        ),
        Dream(
            title: "Incontro con un alieno",
            content: "Un'astronave è atterrata nel mio giardino e un alieno amichevole è sceso per fare conoscenza.",
            date: Date(timeIntervalSinceNow: -86400 * 65),
            isNightmare: false,
            isFavorite: false,
            score: 0.4
        ),
        Dream(
            title: "Le pareti si stringono",
            content: "Ero in una stanza e le pareti hanno iniziato a stringersi lentamente, lasciandomi sempre meno spazio.",
            date: Date(timeIntervalSinceNow: -86400 * 70),
            isNightmare: true,
            isFavorite: false,
            score: -0.8
        ),
        Dream(
            title: "Guidare un'auto d'epoca",
            content: "Stavo guidando una decappottabile rossa fiammante su una strada costiera al tramonto.",
            date: Date(timeIntervalSinceNow: -86400 * 75),
            isNightmare: false,
            isFavorite: true,
            score: 0.8
        ),
        Dream(
            title: "Il telefono non funziona",
            content: "Dovevo fare una chiamata urgente, ma il telefono era muto o componeva numeri a caso.",
            date: Date(timeIntervalSinceNow: -86400 * 80),
            isNightmare: true,
            isFavorite: false,
            score: -0.5
        ),
        Dream(
            title: "Neve in estate",
            content: "Era una calda giornata di luglio, ma ha iniziato a nevicare abbondantemente, coprendo tutto di bianco.",
            date: Date(timeIntervalSinceNow: -86400 * 85),
            isNightmare: false,
            isFavorite: false,
            score: 0.3
        ),
        Dream(
            title: "Diventare un supereroe",
            content: "Ho scoperto di avere il potere di controllare il tempo e ho salvato la città da un tornado.",
            date: Date(timeIntervalSinceNow: -86400 * 90),
            isNightmare: false,
            isFavorite: true,
            score: 0.9
        ),
        Dream(
            title: "Fuggire da un vulcano",
            content: "Un vulcano ha iniziato a eruttare e dovevo correre per mettermi in salvo dalla colata di lava.",
            date: Date(timeIntervalSinceNow: -86400 * 95),
            isNightmare: true,
            isFavorite: false,
            score: -0.8
        ),
        Dream(
            title: "Un giardino segreto",
            content: "Ho trovato una piccola porta in un muro che conduceva a un meraviglioso e lussureggiante giardino segreto.",
            date: Date(timeIntervalSinceNow: -86400 * 100),
            isNightmare: false,
            isFavorite: true,
            score: 0.8
        ),
        Dream(
            title: "Essere un detective",
            content: "Stavo investigando su un caso complicato in una città noir, con tanto di impermeabile e cappello.",
            date: Date(timeIntervalSinceNow: -86400 * 105),
            isNightmare: false,
            isFavorite: false,
            score: 0.5
        ),
        Dream(
            title: "Le stelle cadono dal cielo",
            content: "Guardavo il cielo notturno e le stelle hanno iniziato a cadere come una pioggia luminosa e silenziosa.",
            date: Date(timeIntervalSinceNow: -86400 * 110),
            isNightmare: false,
            isFavorite: false,
            score: 0.6
        ),
        Dream(
            title: "Perdere la voce",
            content: "Dovevo tenere un discorso importante, ma quando ho aperto la bocca non avevo più la voce.",
            date: Date(timeIntervalSinceNow: -86400 * 115),
            isNightmare: true,
            isFavorite: false,
            score: -0.7
        ),
        Dream(
            title: "Dipingere le nuvole",
            content: "Volavo nel cielo con un pennello e un secchio di vernice, e dipingevo le nuvole di diversi colori.",
            date: Date(timeIntervalSinceNow: -86400 * 120),
            isNightmare: false,
            isFavorite: false,
            score: 0.7
        ),
        Dream(
            title: "Una città di dolci",
            content: "Camminavo in una città dove le case erano fatte di biscotti, le strade di cioccolato e i fiumi di latte.",
            date: Date(timeIntervalSinceNow: -86400 * 125),
            isNightmare: false,
            isFavorite: true,
            score: 0.8
        ),
        Dream(
            title: "Intrappolato in un videogioco",
            content: "Sono stato risucchiato dentro il mio videogioco preferito e ho dovuto superare i livelli per poter uscire.",
            date: Date(timeIntervalSinceNow: -86400 * 130),
            isNightmare: false,
            isFavorite: false,
            score: 0.4
        ),
        Dream(
            title: "Essere l'ultimo sulla Terra",
            content: "Mi sono svegliato e ho scoperto di essere l'unica persona rimasta. Un silenzio assordante e una grande solitudine.",
            date: Date(timeIntervalSinceNow: -86400 * 135),
            isNightmare: true,
            isFavorite: false,
            score: -0.7
        ),
        Dream(
            title: "Navigare su una nave pirata",
            content: "Ero su un galeone pirata, alla ricerca di un tesoro nascosto. Il mare era in tempesta e l'avventura palpabile.",
            date: Date(timeIntervalSinceNow: -86400 * 140),
            isNightmare: false,
            isFavorite: false,
            score: 0.6
        ),
        Dream(
            title: "Tornare bambino",
            content: "Per un giorno sono tornato ad avere otto anni, rivivendo un pomeriggio di giochi nel parco.",
            date: Date(timeIntervalSinceNow: -86400 * 145),
            isNightmare: false,
            isFavorite: false,
            score: 0.5
        ),
        Dream(
            title: "Il mondo in bianco e nero",
            content: "Mi sono svegliato e tutto intorno a me era in bianco e nero, come in un vecchio film.",
            date: Date(timeIntervalSinceNow: -86400 * 150),
            isNightmare: false,
            isFavorite: false,
            score: 0.1
        ),
        Dream(
            title: "Mostri sotto al letto",
            content: "Sentivo dei rumori e guardando sotto al letto ho visto due occhi rossi che mi fissavano nell'oscurità.",
            date: Date(timeIntervalSinceNow: -86400 * 155),
            isNightmare: true,
            isFavorite: false,
            score: -0.9
        ),
        Dream(
            title: "Scalare una montagna di libri",
            content: "Per raggiungere la cima di una montagna, dovevo scalare una pila altissima di libri antichi e pesanti.",
            date: Date(timeIntervalSinceNow: -86400 * 160),
            isNightmare: false,
            isFavorite: false,
            score: 0.2
        ),
        Dream(
            title: "Ritrovare un amico perduto",
            content: "Ho incontrato per caso un vecchio amico che non vedevo da anni. È stato un momento molto emozionante.",
            date: Date(timeIntervalSinceNow: -86400 * 165),
            isNightmare: false,
            isFavorite: true,
            score: 0.8
        ),
        Dream(
            title: "Un'invasione di ragni",
            content: "La mia casa era stata invasa da migliaia di ragni, grandi e piccoli. Tessevano ragnatele ovunque.",
            date: Date(timeIntervalSinceNow: -86400 * 170),
            isNightmare: true,
            isFavorite: false,
            score: -1.0
        ),
        Dream(
            title: "Cavalcare un drago",
            content: "Volavo in groppa a un maestoso drago rosso, sopra valli e montagne. Il vento era forte e mi sentivo libero.",
            date: Date(timeIntervalSinceNow: -86400 * 175),
            isNightmare: false,
            isFavorite: true,
            score: 1.0
        ),
        Dream(
            title: "Vedere il futuro in uno specchio",
            content: "Guardandomi allo specchio, invece del mio riflesso vedevo immagini frammentate del mio futuro.",
            date: Date(timeIntervalSinceNow: -86400 * 180),
            isNightmare: false,
            isFavorite: false,
            score: 0.3
        ),
        Dream(
            title: "Perdere l'aereo",
            content: "Ero in aeroporto ma non riuscivo a trovare il mio gate. L'aereo stava per partire e io correvo nel panico.",
            date: Date(timeIntervalSinceNow: -86400 * 185),
            isNightmare: true,
            isFavorite: false,
            score: -0.6
        ),
        Dream(
            title: "Una cascata di cioccolato",
            content: "Ho trovato una cascata gigante fatta interamente di cioccolato fuso in cui potevo tuffarmi.",
            date: Date(timeIntervalSinceNow: -86400 * 190),
            isNightmare: false,
            isFavorite: false,
            score: 0.7
        ),
        Dream(
            title: "Ritrovarsi in un deserto",
            content: "Camminavo senza meta in un deserto arido sotto un sole cocente, senza acqua né riparo.",
            date: Date(timeIntervalSinceNow: -86400 * 195),
            isNightmare: true,
            isFavorite: false,
            score: -0.7
        ),
        Dream(
            title: "Cena romantica",
            content: "Una cena a lume di candela su una terrazza affacciata sul mare. Momento perfetto.",
            date: Date(timeIntervalSinceNow: -86400 * 200),
            isNightmare: false,
            isFavorite: true,
            score: 0.9
        ),
        Dream(
            title: "Un colloquio di lavoro bizzarro",
            content: "Ero a un colloquio dove mi veniva chiesto di cantare e ballare invece di rispondere a domande serie.",
            date: Date(timeIntervalSinceNow: -86400 * 205),
            isNightmare: false,
            isFavorite: false,
            score: -0.1
        ),
        Dream(
            title: "La foresta di ghiaccio",
            content: "Tutto era congelato, gli alberi sembravano sculture di cristallo e il mio respiro si condensava in piccole nuvole.",
            date: Date(timeIntervalSinceNow: -86400 * 210),
            isNightmare: false,
            isFavorite: false,
            score: 0.2
        ),
        Dream(
            title: "La casa si allaga",
            content: "L'acqua ha iniziato a entrare in casa da sotto la porta, salendo di livello rapidamente e sommergendo tutto.",
            date: Date(timeIntervalSinceNow: -86400 * 215),
            isNightmare: true,
            isFavorite: false,
            score: -0.8
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
