import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {

  var list=[
    {"img":"data:image/jpeg;base64,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" },
    {"img":"data:image/jpeg;base64,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" },
    {"img":"data:image/jpeg;base64,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" },
    {"img":"data:image/jpeg;base64,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" },
    {"img":"data:image/jpeg;base64,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" },
    {"img":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHwAfQMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAADBQECBAAG/8QANBAAAQQBAwMDAgQFBAMAAAAAAQACAxEEEiExBUFREyJhcYEUIzKxBkKRocEzUuHwFSQl/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAMEAgEF/8QAIBEAAgMAAwACAwAAAAAAAAAAAAECAxESITEEMhNBUf/aAAwDAQACEQMRAD8A9u1lndXDKRWM2Vmss0ljAIjtX0I4ZsrBm6AAen8KwYtGlRpoIABpXFto1CrJVbaTQK4zqBBlLqRCoBt1Dlc06yoZa7090YNFlTS0ZAaKVS1aNNlcWCkHDLSppWhzfhDLV0A0au1tEq4ZSmkI6RWyloC47NKS9XyzHkQtLiG6S406liyagtZuuDm8Q8pUdVJTi58zf9W5YD+mQcj6/CZF4Ldt78IjZGS0JVyiyRuFXTQQ3SFo2r7qoe552e1cckCiwv7qCRH7nkNrezwsmRLkRyBrWtPk+FkfIXkyZMgpuzW9h/ylfkWjFW2OoZWSAuZx8ooFhK+kzCSZ7i4lhFD20E4bvwnQlyWipx4vAYaucEXSoIWzABzbGyGWbrQUIjdGAFAJU6aVxVLtKABO7heb6+x0LI8p7A4RmnAnbyL+F6jSGt92yV9W0ui0PFscRqB4IvdJvjsGPolxmmI8PL/8i4+g5tCg9hFFt/ej3W3DdJq9Fry6Jprn9ko6X0yXEfmv6jLGIXvuMNbVea70fHlNcDIAxXANlgbfteWgkjyQfK85TfLGehOPTwYCOUueHMFNIBFfe0SCAuhLm+x7Ld9UGTLdjGL1dUrMgFpkDNJaQNid9x2+Nlq/FAQyfhWa5dJ0A8E9lVHNJXuAsjFc4NkjO9WLO7gl+XDbrjeI/LXR7f11BMjjiN3rNhBc7Z0rvc4jwSeB8cKskEMkZin0zQPPB/lPhDW+GlLC2Fjem1t0T3ptC0zjIrhAiot7WjDYWqYLESTeyLndUKtd8rk0WD0+VUtKMQqHnlAEtpXCqzYK4QgIeC7j+6WdUjLojqF14TJzCTdrPkNBYQTflYmtRqPp5qTKBz2CRn5cTbvyfp3TPFEuS1r5qMd7Na2q+pSnIyMbDzi3Kd6ZO7ZCCRRPwmmHlMmjL8bIx8lnB9OQX9/leTD7vT0pfVYa5Y45w+OZ+lpaW+0bt+i810LHjxP4ifhTdQkmjhYJYgXAF1kiiPiu3wnohgmYYxLMy+bdZH0KFD0Tpsby50TD/NZ5vzfNqhLWmjMZqMWn+xw+aNjq1/rPtHysGUMcMljstc4WSD38qz36W/8Ars2YK1O3NJd1LFkmwyGtGl7hqcSbr4TrZ4hEI9jbp0mvGa40Sd7WzfZJD1CPEjjjDTqAvtsFbA6s+WbRMLDiN+ORwB8ELtd0FkW+wl8eb2WDwUusHhUBv6K6pJDuyG47qxKoUaBYFXCCX6VAmA5Rp0O53tNcgeVikkZr1cXyjPkGzhx5SnJeWxuvf3EUPCxZLEagtZnljZN1KnxteGtv3C9itbuk4WQ71fw8YlbxI1oDh90DHnbERJIXGQjgDgblbWTSP0uhdVi9Dh2UCim22W60icfClBqZ5dXDr5Wr8GK3d9xyhQTTyX7gKO+y2svT7in1xiJnJmX8LC3fTqP7rJ1bIbj4UztTGuaz2t8LVkyawWg0PheZ6rGXMmEQL7oP78+Uq+zisQymOvsUdXlzPXZHjj1S1nukbzZ323+Sj9BlyM3JbC91lo3OkgsF0bPlYfxD8d7YWwPaTy47g78Nr/NL2uLHDixRBjafINTieVPRDnPSu67hXmDRt+0WjcDyUJhBqj2RC7ZeueOySVQqC7yq6wunCtE8qDG2t/3QxK7/AGbKbY8bcrJoHk+yMAHa0lyp3fiGRluxPKazv9mk+dkqyyHFhYfckXPobV6aSzUxrBy7dx70uErosj1AQA1tAWomnZBH6x/QQKcs3rxZWOyRjra6iCCpdKx1jy+u3WG6X8j5+qP63qY5A2P7JVhyiJ1E9zutjfY477PNqiuXJCZxwrNJoYXbbheZ6f1FsHUn4uadJyR6kerg8il6HqxMWGZAQKLbPgEgFJJseB+NG3PhD2xghr64/wChTXJqaHVNcRnBgsjyC5rXOLnWQ42B9EfIH/0yATp0ih2WLGaMfE9UzSODRtqdZPhGwmSO/MmcS882n0pfwTaxuw03fZXLhX6igt3FK42HKrRKTuVax3VA5VJ3XTgA6uzgu1EH5QWlh/mUPeGiiduxWGaRTJftfhJ82X0iZGHvdFMp3tcCCatKM+JsgqOdod4J5SLu0Or6ZbIMcuBqmcWsqzbqCUfw/kuidJGGeniNd+W48fRVozvZjySn04hT2BuwP+Si5ckD4XR3pjAoNaeAvOcnpfFdHrcKKN7dZla8HcEHta1yPBewMOw5Xkv4YjjHpwwSyGFh1Ue69W0xtaHbV9VfRJOOklsWpYXmayZhik3a4JL1ESRwhoN6NnWL1DwtuZkuDmthbq7k3sEpmy/V1EASAj3MKxfKLWGqotPQzMluViwNjjtlguDtiB8/0TjHLdFBtUUj6dI7mJpaRtTuybY0r3VqoptHmirvTWZNBpXD/KDK7U0EiiCqh/lUaT5pp10u1BZHPK7Wu6GGVrm9qtQ+TUC0g/dC/Ve9UOQhQyGaN2utjQpYNlJWsd7Swu+6T9XIgZR/Qe/hNNb9/e7+qUdRlc6CW69oLh8EKe3wbX6BdDLPG2OJxaK3dfJXS4cOFGHPY6V98EXZ+VpxfayNw50hMBTnFpAI+ii4psuTaRPRJ4n45k0elQ0gEUtWTNFI38zUQO1JfK702O0gU0EgLP0/LmcRbr1c7J6li4inHXyNeVLUTZI5CwVt2/sixRDIjbIGDX3LUAxsnf8AmC96W7HaI2OYwUKRGOsG+ujPgvMebJA4Hbv8JrESAfdVLzWTI9mcx7XEOc2iU6wZnyR+42n/AB3vRPes7GbTqbRKqXIEbjq+ysHHUVSycl8gad1AktBkPvJV2btBXNNYf//Z" },
    {"img":"data:image/jpeg;base64,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" },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortraitLayout()
              : buildLandscapeLayout();
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

          SizedBox(height: 10,),
          Container(

            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Loream ipsum dolor sit amet, consecteture adipiscing elt. Sad aliquuit Turpis eu enim tristique,in isculis libero porttitor',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Expanded(
              child:  GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  crossAxisCount: 3,

                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Image.network(list[index]["img"]!,fit: BoxFit.cover,);
                },
              )
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(

        children: [
          SizedBox(width: 20,),
          Expanded(

            flex: 1,
            child: Center(
              child: Container(

                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/250?image=9',
                  ),

                ),

              ),
            ),


          ),
          SizedBox(width: 20,),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar(
                //   title: Text('Profile'),
                // ),
                SizedBox(height: 20),
                Text(
                  'Jhon Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Loream ipsum dolor sit amet, consecteture adipiscing elt. Sad aliquuit Turpis eu enim tristique,in isculis libero porttitor',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Expanded(
                    child:  GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        crossAxisCount: 3,

                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Image.network(list[index]["img"]!,fit: BoxFit.cover,);
                      },
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
