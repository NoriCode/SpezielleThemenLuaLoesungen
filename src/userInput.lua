---
--- Generated by Luanalysis
--- Created by nori.
--- DateTime: 11/30/21 12:24 PM
---

--[[
    Für diese Lösung wird die Aufgab
--]]
require("grundlegendes")

function inputAufforderung()
    io.flush()
    local input = io.read("*n")   -- Speichert den Input nur wenn es als number erkannt wird
    return input
end

function grundgeruest2()
    local input = inputAufforderung()
    local polynom, polynomText = polynom2(input)
    print("Das Polynom von der Funktion y= " .. polynomText .. " lautet " .. polynom)
end

function quadrat()
    io.write("Gebe eine Zahl ein: ")
    local x = inputAufforderung()
    for i = 1, x do
        for j = 1, x do
            io.write("*")
        end
        print()
    end
    print("\nEnde Quadrat\n\n\n")
end

function rechteck1()
    io.write("Gebe eine Zahl für x ein: ")
    local x = inputAufforderung()

    for i = 1, x*2 do
        for j = 1, x do
            io.write("*")
        end
        print()
    end
    print("\nEnde Rechteck 1\n\n\n")
end

function rechteck2()
    io.write("Gebe eine Zahl für x ein: ")
    local x = inputAufforderung()

    io.write("Gebe eine Zahl für y ein: ")
    local y = inputAufforderung()

    for i = 1, y do
        for j = 1, x do
            io.write("*")
        end
        print()
    end
    print("\nEnde Rechteck 2\n\n\n")
end

function menu()
    repeat
        print("Willkommen zum Zeichenbrett");
        print("Deine Optionen sind:");
        print("0 - Programm beenden")
        print("1 - Quadrat");
        print("2 - Rechteck mit 1 definierten Seite");
        print("3 - Rechteck mit 2 definierten Seiten");
        io.write("Your choice: ");
        local wahl = inputAufforderung()

        if wahl == 1 then
            quadrat()
        elseif wahl == 2 then
            rechteck1()
        elseif wahl == 3 then
            rechteck2()

        end
    until wahl == 0
    print("Programm beendet")
end