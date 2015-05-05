Start ubigraph server by `./ubigraph_server`

- Run: erlubi:start()
- Create vertex: {ok, Vertex} = erlubi:vertex()
- Create edge: {ok, Edge} = erlubi:edge(Vertex1, Vertex2)
- Set attributes: Vertex:shape(sphere), Edge:stroke(dashed)
- Clear the graph space: erlubi:clear()
