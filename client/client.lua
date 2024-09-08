Citizen.CreateThread(function()
    for _, info in pairs(Config.Blips) do
        local blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
        SetBlipSprite(blip, info.id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, info.colour)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(blip)
    end
end)
