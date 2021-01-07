    BEGIN {
    var =100784945431573920
        print var " * 30 +" var |& "bc"
        "bc" |& getline var2
        print var " *31 = " var2
    }