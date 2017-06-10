# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
#ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
#geom_bar(stat="identity", position=position_dodge())

#ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
#geom_bar(stat="identity", position=position_dodge(), colour="black")

#dat <- csv.data (
#gender = factor(c("F","M"), levels=c("Female","Male")),

#very basic bar graph
ggplot(data=csv.data, aes(x=csv.data$year)) +
  geom_bar(stat="count")

ggplot(data=csv.data, aes(x=csv.data$year, fill=gender)) +
  geom_bar(stat="count", position=position_dodge(), colour="black")

# Interleaved histograms
ggplot(data=csv.data, aes(x=csv.data$year, xlim=1900:2014 fill=gender)) +
  geom_histogram(binwidth=.5, position="dodge")

#did not do it in a very efficient way, did not know how to do it faster. Figuring out took more time than doing it like this (had to be broken down into 11 levels, which is still doable by hand)
decade1 <- combineLevels(year, levs=c('1901','1902','1903','1904','1905','1906','1907','1908','1909'), newLabel='decade1')
decade2 <- combineLevels(decade1, levs=c('1910','1911','1912','1913','1914','1915','1917','1918','1919'), newLabel='decade2')
decade3 <- combineLevels(decade2, levs=c('1920','1921','1922','1923','1924','1925','1926','1927','1928','1929'), newLabel='decade3')
decade4 <- combineLevels(decade3, levs=c('1930','1931','1932','1933','1934','1935','1936','1937','1938','1939'), newLabel='decade4')
decade5 <- combineLevels(decade4, levs=c('1943','1944','1945','1946','1947','1948','1949'), newLabel='decade5')
decade6 <- combineLevels(decade5, levs=c('1950','1951','1952','1953','1954','1955','1956','1957','1958','1959'), newLabel='decade6')
decade7 <- combineLevels(decade6, levs=c('1960','1961','1962','1963','1964','1965','1966','1967','1968','1969'), newLabel='decade7')
decade8 <- combineLevels(decade7, levs=c('1970','1971','1972','1973','1974','1975','1976','1977','1978','1979'), newLabel='decade8')
decade9 <- combineLevels(decade8, levs=c('1980','1981','1982','1983','1984','1985','1986','1987','1988','1989'), newLabel='decade9')
decade10 <- combineLevels(decade9, levs=c('1990','1991','1992','1993','1994','1995','1996','1997','1998','1999'), newLabel='decade10')
decade11 <- combineLevels(decade10, levs=c('2000','2001','2002','2003','2004','2005','2006','2007','2008','2009'), newLabel='decade11')
decade12 <- combineLevels(decade11, levs=c('2000','2011','2012','2013'), newLabel='decade12')


p <- ggplot(data=csv.data, aes(x=csv.data$decades, fill=gender)) + geom_bar(stat="count", position=position_dodge(), colour="black") +
  xlab("Years") + ggtitle("Gender gap")

#done by hand, for lack of knowing other options (possible to do by hand still, not too lang)
p + scale_x_discrete(name = 'Years (Decades)',labels=c("decade1" = "1901", "decade2" = "1910", "decade3" = "1920", "decade4" = "1930", "decade5" = "1940", "decade6" = "1950", "decade7" = "1960", "decade8" = "1970", "decade9" = "1980", "decade10" = "1990", "decade11" = "2000", "decade12" = "2010"))





