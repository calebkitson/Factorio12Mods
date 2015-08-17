from os import path
import sys


class Recipe:

    def __init__(self):
        pass

def getAllMods():
    pass

def getModsFromList():
    pass

def getRecipiesInMod():
    pass

def makeRecipe():
    pass

def writeRecipe():
    pass

def loadModList():
    pass

if __name__ == "__main__":
    if len(sys.argv) < 2:
        getAllMods()
    else:
        if str(sys.argv[1]).endswith("*.txt"):