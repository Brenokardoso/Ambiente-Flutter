class Graph {
  final int vertices;
  final List<List<Edge>> adjList;

  Graph(this.vertices) : adjList = List.generate(vertices, (index) => []);

  void addEdge(int from, int to, int weight) {
    adjList[from].add(Edge(to, weight));
  }

  List<int> dijkstra(int start, int end) {
    const int INF = 9999999; // Um valor grande para representar infinito
    List<int> distances = List.filled(vertices, INF);
    distances[start] = 0;

    List<Node> pq = [Node(start, 0)];

    while (pq.isNotEmpty) {
      pq.sort((a, b) => a.distance.compareTo(b.distance));
      Node current = pq.removeAt(0);

      if (current.vertex == end) {
        break;
      }

      for (Edge edge in adjList[current.vertex]) {
        int newDistance = current.distance + edge.weight;
        if (newDistance < distances[edge.to]) {
          distances[edge.to] = newDistance;
          pq.add(Node(edge.to, newDistance));
        }
      }
    }

    return distances;
  }
}

class Edge {
  final int to;
  final int weight;

  Edge(this.to, this.weight);
}

class Node {
  final int vertex;
  final int distance;

  Node(this.vertex, this.distance);
}

void main() {
  Graph graph = Graph(5);

  graph.addEdge(0, 1, 4);
  graph.addEdge(0, 2, 2);
  graph.addEdge(1, 2, 5);
  graph.addEdge(1, 3, 10);
  graph.addEdge(2, 3, 2);
  graph.addEdge(2, 4, 3);
  graph.addEdge(3, 4, 7);

  int startVertex = 0;
  int endVertex = 4;
  List<int> distances = graph.dijkstra(startVertex, endVertex);

  print("Distâncias mínimas a partir do vértice $startVertex:");
  for (int i = 0; i < distances.length; i++) {
    print("Para o vértice $i: ${distances[i]}");
  }

  print("Distância mínima até o vértice $endVertex: ${distances[endVertex]}");
}
