MoleculesReportGraph[file_] := Module[{fileimport, content},
    fileimport = Import[file];
    content = Take[fileimport, -Length[fileimport] + 1];
    titles = Take[Part[fileimport, 1], -Length[Part[fileimport, 1]] + 1];
    curves = Table[Take[content[[n]], -Length[content[[n]]] + 1], {n, Length[content]}];
    labels = Table[Part[Part[content, n], 1], {n, Length[content]}];
    ListLinePlot[curves, 
        Ticks -> {Table[{a, titles[[a]]}, {a, 4}], Automatic}, 
        PlotLabels -> Table[Part[Part[content, n], 1], {n, Length[content]}]];
]
