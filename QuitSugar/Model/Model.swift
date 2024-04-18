//
//  Model.swift
//  QuitSugar
//
//  Created by Roman on 31.03.24.
//

import Foundation

enum Motivation: String, CaseIterable {
    case fact1 = "Сахар вызывает быстрый повышенный уровень глюкозы в крови, что может привести к диабету."
    case fact2 = "Избыток сахара связан с развитием ожирения."
    case fact3 = "Высокое потребление сахара может повысить риск сердечно-сосудистых заболеваний."
    case fact4 = "Сахар способствует развитию кариеса и поражению зубов."
    case fact5 = "Употребление сахара может вызвать проблемы с кожей, такие как акне и ускоренное старение."
    case fact6 = "Сахар может привести к зависимости, аналогичной наркотической."
    case fact7 = "Переизбыток сахара может снизить уровень энергии и вызвать чувство усталости."
    case fact8 = "Снижение потребления сахара помогает улучшить когнитивные функции и память."
    case fact9 = "Уменьшение сахара в рационе может улучшить состояние кожи и снизить воспаление."
    case fact10 = "Снижение уровня сахара в крови помогает управлять аппетитом и предотвращает чрезмерное переедание."
    case fact11 = "Сокращение потребления сахара помогает улучшить энергетический баланс и контроль массы тела."
    case fact12 = "Избыток сахара связан с повышенным риском развития атеросклероза и заболеваний артерий."
    case fact13 = "Снижение потребления сахара помогает улучшить здоровье сосудов и кровообращение."
    case fact14 = "Сахар может ухудшить работу щитовидной железы и привести к нарушениям обмена гормонов."
    case fact15 = "Сокращение сахара в рационе помогает улучшить здоровье сердца и снизить риск развития сердечно-сосудистых заболеваний."
    case fact16 = "Избыток сахара в рационе связан с увеличенным риском развития заболеваний желудочно-кишечного тракта."
    case fact17 = "Снижение потребления сахара помогает улучшить усвоение питательных веществ и обмен веществ."
    case fact18 = "Сахар может усилить проявления аллергических реакций и увеличить чувствительность иммунной системы к аллергенам."
    case fact19 = "Сокращение сахара в рационе помогает улучшить общее здоровье и повысить жизненный тонус."
    case fact20 = "Избыток сахара в рационе связан с повышенным риском развития болезней почек и мочевыводящих путей."
    case fact21 = "Снижение потребления сахара помогает улучшить работу иммунной системы и сопротивляемость инфекциям."
    case fact22 = "Сахар может вызвать нарушения в работе эндокринной системы и увеличить риск развития гормональных заболеваний."
    case fact23 = "Сокращение сахара в рационе помогает улучшить обмен веществ и снизить риск развития метаболических нарушений."
    case fact24 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний сосудов и кровообращения."
    case fact25 = "Снижение потребления сахара помогает улучшить здоровье кожи и снизить риск развития дерматологических проблем."
    case fact26 = "Сахар может увеличить риск развития метаболических расстройств и нарушений обмена веществ."
    case fact27 = "Сокращение сахара в рационе помогает улучшить функции печени и снизить риск развития печеночных заболеваний."
    case fact28 = "Избыток сахара в рационе связан с увеличенным риском развития сахарного диабета и осложнений этого заболевания."
    case fact29 = "Снижение потребления сахара помогает улучшить здоровье суставов и снизить риск развития артрита."
    case fact30 = "Сахар может способствовать образованию камней в почках и увеличить риск развития мочекаменной болезни."
    case fact31 = "Сокращение сахара в рационе помогает улучшить работу нервной системы и снизить риск развития неврологических заболеваний."
    case fact32 = "Избыток сахара в рационе связан с увеличенным риском развития депрессии и других психических расстройств."
    case fact33 = "Снижение потребления сахара помогает улучшить состояние зубов и десен и снизить риск развития кариеса."
    case fact34 = "Сахар может привести к нарушению сна и ухудшению его качества."
    case fact35 = "Сокращение сахара в рационе помогает улучшить работу пищеварительной системы и снизить риск развития желудочных заболеваний."
    case fact36 = "Избыток сахара в рационе связан с увеличенным риском развития раковых заболеваний."
    case fact37 = "Снижение потребления сахара помогает улучшить эмоциональное состояние и устойчивость к стрессу."
    case fact38 = "Сахар может способствовать образованию жировой ткани в печени и развитию жировой дистрофии печени."
    case fact39 = "Сокращение сахара в рационе помогает улучшить усвоение питательных веществ и снизить риск развития дисбактериоза."
    case fact40 = "Избыток сахара в рационе связан с увеличенным риском развития ревматоидного артрита и других аутоиммунных заболеваний."
    case fact41 = "Снижение потребления сахара помогает улучшить концентрацию внимания и когнитивные функции."
    case fact42 = "Сахар может ухудшить работу гормональной системы и способствовать нарушению менструального цикла у женщин."
    case fact43 = "Сокращение сахара в рационе помогает улучшить качество спермы и снизить риск развития мужского бесплодия."
    case fact44 = "Избыток сахара в рационе связан с увеличенным риском развития заболеваний щитовидной железы."
    case fact45 = "Снижение потребления сахара помогает улучшить работу иммунной системы и сопротивляемость инфекциям и воспалениям."
    case fact46 = "Сахар может ухудшить состояние нервной системы и увеличить риск развития психических расстройств и неврологических заболеваний."
    case fact47 = "Сокращение сахара в рационе помогает улучшить работу пищеварительной системы и снизить риск развития заболеваний желудка и кишечника."
    case fact48 = "Избыток сахара в рационе связан с увеличенным риском развития аутоиммунных заболеваний и нарушений иммунной системы."
    case fact49 = "Снижение потребления сахара помогает улучшить уровень энергии и повысить работоспособность и физическую активность."
    case fact50 = "Сахар может увеличить риск развития метаболических расстройств и нарушений обмена веществ и способствовать набору лишнего веса."
    case fact51 = "Сокращение сахара в рационе помогает улучшить состояние зубов и десен и снизить риск развития кариеса и других стоматологических проблем."
    case fact52 = "Избыток сахара в рационе связан с повышенным риском развития диабета и других эндокринных расстройств и нарушений гормонального баланса."
    case fact53 = "Снижение потребления сахара помогает улучшить работу сердечно-сосудистой системы и снизить риск развития сердечно-сосудистых заболеваний и инсульта."
    case fact54 = "Сахар может ухудшить состояние кожи и способствовать развитию различных дерматологических проблем, включая акне и псориаз."
    case fact55 = "Сокращение сахара в рационе помогает улучшить обмен веществ и контроль массы тела и снизить риск развития ожирения и метаболического синдрома."
    case fact56 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний костно-мышечной системы и артрита и увеличением чувствительности к боли и снижением подвижности суставов."
    case fact57 = "Снижение потребления сахара помогает улучшить обмен веществ и контроль массы тела и снизить риск развития ожирения и метаболического синдрома и сахарного диабета."
    case fact58 = "Сахар может ухудшить состояние зубов и десен и способствовать развитию кариеса и других стоматологических проблем и нарушению зубного эмалевого покрова."
    case fact59 = "Сокращение сахара в рационе помогает улучшить состояние кожи и снизить риск развития различных дерматологических проблем, включая экзему и псориаз."
    case fact60 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний желудочно-кишечного тракта и нарушений пищеварения и абсорбции питательных веществ."
    case fact61 = "Снижение потребления сахара помогает улучшить работу сердечно-сосудистой системы и снизить риск развития сердечно-сосудистых заболеваний, атеросклероза и гипертонии."
    case fact62 = "Сахар может увеличить риск развития метаболических расстройств и нарушений обмена веществ и способствовать набору лишнего веса и развитию ожирения и метаболического синдрома."
    case fact63 = "Сокращение сахара в рационе помогает улучшить работу иммунной системы и снизить чувствительность к аллергенам и инфекциям и повысить ее сопротивляемость воспалительным процессам и инфекциям."
    case fact64 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний костно-мышечной системы и артрита и увеличением чувствительности к боли и снижением подвижности и гибкости суставов."
    case fact65 = "Снижение потребления сахара помогает улучшить обмен веществ и контроль массы тела и снизить риск развития ожирения, метаболического синдрома и сахарного диабета."
    case fact66 = "Сахар может ухудшить состояние зубов и десен и способствовать развитию кариеса и других стоматологических проблем и нарушению зубного эмалевого покрова и увеличению риска выпадения зубов."
    case fact67 = "Сокращение сахара в рационе помогает улучшить состояние кожи и снизить риск развития различных дерматологических проблем, включая акне, экзему и псориаз."
    case fact68 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний желудочно-кишечного тракта и нарушений пищеварения и абсорбции питательных веществ и дисбактериоза и запоров."
    case fact69 = "Снижение потребления сахара помогает улучшить работу сердечно-сосудистой системы и снизить риск развития сердечно-сосудистых заболеваний, атеросклероза, гипертонии и инсульта."
    case fact70 = "Сахар может увеличить риск развития метаболических расстройств и нарушений обмена веществ и способствовать набору лишнего веса и развитию ожирения и метаболического синдрома и диабета."
    case fact71 = "Сокращение сахара в рационе помогает улучшить работу иммунной системы и снизить чувствительность к аллергенам и инфекциям и повысить ее сопротивляемость воспалительным процессам и инфекциям, и сохранить здоровье и жизненный тонус."
    case fact72 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний костно-мышечной системы и артрита и увеличением чувствительности к боли и снижением подвижности и гибкости суставов и сохранить здоровье и активность."
    case fact73 = "Снижение потребления сахара помогает улучшить обмен веществ и контроль массы тела и снизить риск развития ожирения, метаболического синдрома и сахарного диабета, и сохранить здоровье и энергию."
    case fact74 = "Сахар может ухудшить состояние зубов и десен и способствовать развитию кариеса и других стоматологических проблем и нарушению зубного эмалевого покрова и увеличению риска выпадения зубов и сохранить здоровье и улыбку."
    case fact75 = "Сокращение сахара в рационе помогает улучшить состояние кожи и снизить риск развития различных дерматологических проблем, включая акне, экзему и псориаз, и сохранить здоровье и молодость кожи."
    case fact76 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний желудочно-кишечного тракта и нарушений пищеварения и абсорбции питательных веществ и дисбактериоза и запоров, и сохранить здоровье и пищеварение."
    case fact77 = "Снижение потребления сахара помогает улучшить работу сердечно-сосудистой системы и снизить риск развития сердечно-сосудистых заболеваний, атеросклероза, гипертонии и инсульта, и сохранить здоровье и крепкое сердце."
    case fact78 = "Сахар может увеличить риск развития метаболических расстройств и нарушений обмена веществ и способствовать набору лишнего веса и развитию ожирения и метаболического синдрома и диабета, и сохранить здоровье и форму."
    case fact79 = "Избыток сахара в рационе связан с повышенным риском развития заболеваний костно-мышечной системы и артрита и увеличением чувствительности к боли и снижением подвижности и гибкости суставов, и сохранить здоровье и активность."
    case fact80 = "Сахар может ухудшить состояние зубов и десен и способствовать развитию кариеса и других стоматологических проблем и нарушению зубного эмалевого покрова и увеличению риска выпадения зубов, и сохранить здоровье и улыбку."

}