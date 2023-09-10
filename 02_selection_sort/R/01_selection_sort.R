# it is possible to use which.min(arr)
find_smallest <- function(arr) {
    smallest <- arr[1]
    smallest_index <- 1
    for(i in 1:length(arr)) {
        if (smallest > arr[i]) {
            smallest <- arr[i]
            smallest_index <- i
        }
    }
    smallest_index
}

selection_sort <- function(arr) {
    newArr <- c()
    for(i in 1:(length(arr))) {
        smallest <- find_smallest(arr) # which.min(arr)
        newArr <- append(newArr, arr[smallest])
        arr <- arr[-smallest]
    }
    newArr
}

paste(selection_sort(c(5, 3, 6, 2, 10)))
