//
//  Races.swift
//  Miawouf
//
//  Created by XenoX on 23/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import Foundation

let dogRaces = ["Affenpinscher",
               "Airedale Terrier",
               "Akita",
               "Barbet",
               "Barzoï",
               "Basenji",
               "Basset Hound",
               "Beagle",
               "Beauceron",
               "Berger Allemand",
               "Berger Anglais",
               "Berger Australien",
               "Berger Belge",
               "Berger d'Islande",
               "Berger des Pyrénées",
               "Berger des pyrénées",
               "Berger Hollandais",
               "Berger Picard",
               "Berger Polonais",
               "Berger Shetland",
               "Bichon Frisé",
               "Bichon Maltais",
               "Black Russian Terrier",
               "Bleu de Picardie",
               "Border Collie",
               "Border Terrier",
               "Bouledogue Anglais",
               "Bouledogue Américain",
               "Bouledogue Français",
               "Bouvier Australien",
               "Bouvier Appenzellois",
               "Bouvier Bernois",
               "Bouvier des Flandres",
               "Boxer",
               "Braque Allemand",
               "Braque d'Auvergne",
               "Braque de Weimar",
               "Braque Français",
               "Briard",
               "Boston Terrier",
               "Bull Terrier",
               "Bullmastiff",
               "Berger de Maremme",
               "Braque Hongrois ",
               "à poil court",
               "Berger Du Caucase",
               "Berger Du Caucase",
               "Cairn Terrier",
               "Canaan",
               "Cane Corso",
               "Caniche Standard",
               "Caniche Miniature",
               "Caniche Toy",
               "Carlin",
               "Chesapeake Baie Retriever",
               "Chien Chinois à Crête",
               "Chien nu du Mexique",
               "Chien d'eau Portugais",
               "Chien du Groenland",
               "Chihuahua",
               "Chow Chow",
               "Colley",
               "Colley Barbu",
               "Coonhound",
               "Coton du Tuléar",
               "Dalmatien",
               "Doberman",
               "Dogue Argentin",
               "Dogue du Tibet",
               "Dogue de Bordeaux",
               "Épagneul Breton",
               "Épagneul ",
               "Cavalier King Charles",
               "Épagneul Clumber",
               "Épagneul ",
               "Cocker Américain",
               "Épagneul ",
               "Cocker Anglais",
               "Épagneul ",
               "d'Eau Américain",
               "Épagneul ",
               "d'Eau Irlandais",
               "Épagneul des Champs",
               "Épagneul Français",
               "Épagneul Japonais",
               "Épagneul King Charles",
               "Épagneul ",
               "Springer Anglais",
               "Épagneul ",
               "Springer Gallois",
               "Épagneul Sussex",
               "Épagneul Tibétain",
               "Esquimau Américain",
               "Eurasier",
               "Flat-Coated Retriever",
               "Fox Terrier",
               "Foxhound",
               "Golden Retriever",
               "Grand Danois",
               "Grand Bouvier Suisse",
               "Griffon Belge",
               "Griffon Bruxellois",
               "Griffon Korthals",
               "Harrier",
               "Havanese",
               "Husky Sibérien",
               "Jack Russel Terrier",
               "Keeshond",
               "Komondor",
               "Kuvasz",
               "Labrador Retriever",
               "Léonberger",
               "Lévrier Afghan",
               "Lévrier Anglais",
               "Lévrier Écossais",
               "Lévrier Irlandais",
               "Lévrier Italien",
               "Lévrier Persan",
               "Lhassa Apso",
               "Malamute d'Alaska",
               "Mâtin Napolitain",
               "Mastiff",
               "Montagne des Pyrénées",
               "Mudi",
               "Nova Scotia Duck",
               "Tolling Retriever",
               "Otterhound",
               "Papillon",
               "Parson Russel Terrier",
               "Pékinois",
               "Petit Basset Griffon",
               "Pinscher Allemand",
               "Pinscher Nain",
               "Pit-Bull",
               "Pointer",
               "Pudelpointer",
               "Poméranien",
               "Puli",
               "Rottweiler",
               "Russkiy Toy",
               "Samoyède",
               "Schipperke",
               "Schnauzer Géant",
               "Schnauzer Standard",
               "Schnauzer Nain",
               "Setter Anglais",
               "Setter Gordon",
               "Setter Irlandais",
               "Shar-Pei",
               "Shiba Inu",
               "Shih-Tzu",
               "Spitz Norvégien",
               "Spitz Finlandais",
               "St-Bernard",
               "St-Hubert",
               "Schapendoes",
               "Teckel",
               "Terre-Neuve",
               "Terre-Neuve",
               "Terrier Américain",
               "Terrier Australien",
               "Terrier de Bedlington",
               "Terrier de Soie",
               "Silky",
               "Terrier de Manchester",
               "Terrier du Norfolk",
               "Terrier du Norwich",
               "Terrier Écossais",
               "Terrier Gallois",
               "Terrier Irlandais",
               "Terrier Kerry blue",
               "Terrier Lakeland",
               "Terrier Sealyham",
               "Terrier Skye",
               "Terrier Tchèque",
               "Terrier Tibétain",
               "Terrier Wheaten",
               "Terrier dandie Dinmont",
               "Vizsla",
               "Westie",
               "Welsh Corgi",
               "Whippet",
               "Yorkshire Terrier"]

let catRaces = ["Abyssin",
                "American Bobtail",
                "American Curl",
                "American Shorthair",
                "American Wirehair",
                "Angora turc",
                "Balinais",
                "Bengal",
                "Birman",
                "Bleu russe",
                "Bombay",
                "British Longhair",
                "British Shorthair",
                "Burmese",
                "Burmilla",
                "California Spangled",
                "Californian Rex",
                "Ceylan",
                "Chartreux",
                "Chausie",
                "Chinchilla Persan",
                "Cornish Rex",
                "Cymric",
                "Devon Rex",
                "Donskoy",
                "Européen",
                "Exotic",
                "German Rex",
                "Gouttière",
                "Havana Brown",
                "Highland Straight",
                "Himalayen",
                "Japanese Bobtail",
                "Javanais",
                "Khao Manee",
                "Korat",
                "LaPerm",
                "Maine Coon",
                "Manx",
                "Mau Egyptien",
                "Munchkin",
                "Nebelung",
                "Norvégien",
                "Ocicat",
                "Oriental",
                "Persan",
                "Peterbald",
                "Pixiebob",
                "Ragamuffin",
                "Ragdoll",
                "Safari",
                "Savannah",
                "Scottish Fold",
                "Scottish Fold à poil long",
                "Selkirk Rex",
                "Siamois",
                "Sibérien",
                "Singapura",
                "Snowshoe",
                "Sokoke",
                "Somali",
                "Sphynx",
                "Thaï",
                "Tiffany",
                "Tonkinois",
                "Toyger",
                "Turkish Van",
                "York Chocolat"]
