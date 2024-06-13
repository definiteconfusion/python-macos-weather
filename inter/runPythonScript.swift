//
//  runPythonScript.swift
//  inter
//
//  Created by Jake Rase on 6/22/23.
//

import Foundation
import PythonKit
func tempFuncW() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/intPr/inter/")
    let file = Python.import("weatv2")
    let response = file.temp
    return response
}

func test() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/intPr/inter/")
    let file = Python.import("pyScript")
    let response = file.testMode
    return response
}


func wndDirFunc() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.windDir
    return response
}

func wndSpdFunc() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.windSpd
    return response
}

func humFunc() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.humidity
    return response
}


func cmpImage() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.cmpImg
    return response
}


func tempFuncP() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.temp
    return response
}

func descFunc() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.desc
    return response
}

func weathRate() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.rating
    return response
}

func strRTE() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.strRating
    return response
}

func imgRun() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.img
    return response
}

func TmE() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.TME
    return response
}

func HrE() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.HRE
    return response
}

func aMp() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("pyScript")
    let response = file.M
    return response
}

func forcTemp() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.temperatureList
    return response
}

func weathT1() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT1
    return response
}

func weathT2() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT2
    return response
}

func weathT3() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT3
    return response
}

func weathT4() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT4
    return response
}

func weathT5() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT5
    return response
}

func weathT6() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT6
    return response
}

func weathT7() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT7
    return response
}

func weathT8() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT8
    return response
}

func weathT9() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT9
    return response
}

func weathT10() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT10
    return response
}

func weathT11() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT11
    return response
}

func weathT12() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT12
    return response
}

func weathT13() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT13
    return response
}

func weathT14() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT14
    return response
}

func weathT15() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT15
    return response
}

func weathT16() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT16
    return response
}

func weathT17() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT17
    return response
}

func weathT18() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT18
    return response
}

func weathT19() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT19
    return response
}

func weathT20() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT20
    return response
}

func weathT21() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT21
    return response
}

func weathT22() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT22
    return response
}

func weathT23() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT23
    return response
}

func weathT24() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.weathT24
    return response
}

func locale() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/jakerase/Documents/inter/inter/")
    let file = Python.import("weatv2")
    let response = file.location
    return response
}
