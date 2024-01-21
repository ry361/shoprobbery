NMConfig = {}

NMConfig['Target'] = {
    targetType = 'qbcore', -- For this feature, there are two options: "ox" and "qbcore"
    targetIcon = {firstcase = 'fas fa-cash-register', secondcase = 'fas fa-stop'}, -- You can replace this with a new icon (https://fontawesome.com/)
    targetLabels = {firstcase = 'Start Rob', secondcase = 'Start Hacking', secondcase2 = 'Collect Money'},
}

NMConfig['General'] = {
    firstCDTime = 5000,
    secondCDTime = 5000,
    firstCaseReward = {100, 250},
    secondCaseReward = {250, 500},
}

NMConfig['Notify'] = {
    notifyOptions = true, -- If this feature is set to false, the player won't receive notifications.
    currentNotifyResource  = 'qbcore', -- For this feature, there are two options: "native" and "qbcore"
    ['texts'] = {
        ['not_broken'] = "The case is not broken.",
        ['fail_minigame'] = "You failed the minigame.",
        ['collect_cooldown'] = "You have to wait 60 seconds to collect the money.",
        ['collect_cdfinish'] = "You can collect the money.",
        ['already_robbery'] = "This place is already robbed.",
        ['empty_safe'] = 'Safe is empty.',
    },
}