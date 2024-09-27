
#1
#a
sequence <- -5:5
sequence

#b
x <- 1:7
x

#2
seq(1, 3, by=0.2)


#3
worker_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                18)

#a
worker_age[3]
#b
worker_age[c(2,4)]
#c
worker_age[-c(4,12)]

#4
vector_x <- c("first"=3, "second"=0, "third"=9)
names(x)

#a
x[c("first", "third")]


#5
sequence_x <- -3:2
#a
sequence_x[2] <- 0
sequence_x

#6 data frame
#a
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

fuel_data <- data.frame(month, price_per_liter, purchase_quantity)

fuel_data 

#b
ave_exp <- weighted.mean(price_per_liter, purchase_quantity)
ave_exp


#7
data(rivers)

rivers_stat <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))

rivers_stat

#8
#a
Power_Ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
Celebrity_Name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", 
                    "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")

Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 20, 39, 45, 32, 40, 31)

Forbes_Table <- data.frame(Power_Ranking, Celebrity_Name, Pay)
Forbes_Table

#b
Forbes_Table[Forbes_Table$Celebrity_Name == "J.K. Rowling", "Power_Ranking"] <- 15
Forbes_Table[Forbes_Table$Celebrity_Name == "J.K. Rowling", "Pay"] <- 90

#c
write.csv(Forbes_Table, file = "PowerRanking.csv", row.names = FALSE)

imported_data <- read.csv("PowerRanking.csv")

print(imported_data)

#d
Ranks <- Forbes_Table[10:20, ]
save(Ranks, file = "Ranks.RData")
print(Ranks)

#9 
#a
filepath <- "hotels-vienna.xlsx"
hotels_data <- read_excel(filepath)

print(hotels_data)

#b
dataset_dimensions <- dim(hotels_data)
print(dataset_dimensions)

#c
selected_data <- select(hotels_data, country, neighbourhood, price, stars, accommodation_type, rating)
print(selected_data)

#d
save(selected_data, file = "new.RData")

#e
load("new.RData")
print(head(selected_data))
print(tail(selected_data))

#10
#a
vegetables <- list("Cabbage", "Eggplant", "Okra", "Kangkong", "Onion",
                   "Garlic", "Ginger", "Papaya", "Kamatis", "Kalabasa")

#b
vegetables[[length(vegetables) + 1]] <- "Cauliflower"
vegetables[[length(vegetables) + 1]] <- "Radish"

#c
vegetables <- append(vegetables, list("Asparagus", "Mushroom", "Sayote", "Leek"), after = 5)
print(vegetables)

#d
vegetables <- vegetables[-c(5, 10, 15)]

print(vegetables)
num_left <- length(vegetables)
print(num_left)

