// class Search extends SearchDelegate {
//   List data = [];

//   final AudioPlayer _audioPlayer = AudioPlayer();

//   playSong(String? uri) {
//     try {
//       _audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(uri!)));
//       _audioPlayer.play();
//     } on Exception {
//       print('error');
//     }
//   }

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = '';
//           },
//           icon: const Icon(Icons.clear_rounded))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: const Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return FutureBuilder<Box<AudioModel>>(
//         future: Hive.openBox<AudioModel>('songs_db'),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final songbox = snapshot.data!.values.toList();
//             final filteredSongs = songbox
//                 .where((data) =>
//                     data.title.toLowerCase().contains(query.toLowerCase()))
//                 .toList();
//             if (query.isEmpty) {
//               return Center(
//                 child: LottieBuilder.asset(
//                   'Assets/Animations/searching song animation.json',
//                   height: 200,
//                   width: 200,
//                 ),
//               );
//             }
//             else if(filteredSongs.isEmpty){
//               return Center(
//                 child: Column(
//                 children: [
//                   LottieBuilder.asset('Assets/Animations/no searched song animation.json',height: 150,width: 150,), 
//                  const Text('Sorry Searched Song Not Found',style: TextStyle(fontWeight: FontWeight.w500),),
//                 ],
//               ),);  
//             }
//             return ListView.builder(
//               itemBuilder: (ctx, index) {
//                 final data = filteredSongs[index];
//                 String namevalue = data.title;
//                 if (namevalue.toLowerCase().contains(query.toLowerCase())) {
//                   return Column(
//                     children: [
//                       ListTile(
//                         onTap: () {
//                           context.read<ArtWorkProvider>().setId(data.image!);                         
//                           Navigator.of(context).pushReplacement(MaterialPageRoute(
//                             builder: (ctx) => NowPlayingScreen(
//                              songindex: index,
//                              songsList: filteredSongs, 
//                             ),
//                           ));
//                         },
//                         title: Text(
//                           data.title,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         leading: QueryArtworkWidget(
//                           id: data.image!,
//                           type: ArtworkType.AUDIO,
//                           artworkHeight: 90,
//                           artworkWidth: 60,
//                           artworkFit: BoxFit.fill,
//                           artworkQuality: FilterQuality.high,
//                           artworkBorder: BorderRadius.circular(5),
//                           quality: 100,
//                           nullArtworkWidget: Container(
//                             width: 60,
//                             height: 90,
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.all(Radius.circular(5)),
//                                 image: DecorationImage(
//                                     image:
//                                         AssetImage('Assets/images/music logo.png'),
//                                     fit: BoxFit.fill)),
//                           ),
//                         ),
//                       ),
//                       const Divider(),
//                     ],
//                   );
//                 } 
//                 else {
//                   return const SizedBox();
//                 }
//               },
//               itemCount: filteredSongs.length,
//             );
//           } 
//           else {
//             return const SizedBox();
//           }
//         });
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return FutureBuilder<Box<AudioModel>>(
//         future: Hive.openBox<AudioModel>('songs_db'),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final songbox = snapshot.data!.values.toList();
//             final filteredSongs = songbox
//                 .where((data) => data.title
//                     .toLowerCase()
//                     .contains(query.toLowerCase().trim()))
//                 .toList();
//             if(filteredSongs.isEmpty){
//               return Center(
//                 child: Column(
//                 children: [
//                   LottieBuilder.asset('Assets/Animations/no searched song animation.json',height: 150,width: 150,), 
//                  const Text('Sorry Searched Song Not Found',style: TextStyle(fontWeight: FontWeight.w500),),
//                 ],
//               ),); 
//             }    
//             return ListView.builder(
//               itemBuilder: (ctx, index) {
//                 final data = filteredSongs[index];
//                 String namevalue = data.title;
//                 if (namevalue
//                     .toLowerCase()
//                     .contains(query.toLowerCase().trim())) {
//                   return Column(
//                     children: [
//                       ListTile(
//                         onTap: () {
//                           context.read<ArtWorkProvider>().setId(data.image!);
//                             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                             builder: (ctx) => NowPlayingScreen(
//                              songindex: index,
//                              songsList: filteredSongs, 
//                             ),
//                           ));
//                         },
//                         title: Text(data.title,maxLines: 1,overflow: TextOverflow.ellipsis,),
//                         leading: QueryArtworkWidget(
//                           id: data.image!,
//                           type: ArtworkType.AUDIO,
//                           artworkHeight: 90,
//                           artworkWidth: 60,
//                           artworkFit: BoxFit.fill,
//                           artworkQuality: FilterQuality.high,
//                           artworkBorder: BorderRadius.circular(5),
//                           quality: 100,
//                           nullArtworkWidget: Container(
//                             width: 60,
//                             height: 90,
//                             decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(5)),
//                                 image: DecorationImage(
//                                     image: AssetImage(
//                                         'Assets/images/music logo.png'),
//                                     fit: BoxFit.fill)),
//                           ),
//                         ),
//                       ),
//                       const Divider(),
//                     ],
//                   );
//                 } else {
//                   return Container();
//                 }
//               },
//               itemCount: filteredSongs.length,
//             );
//           }
//           return const SizedBox();
//         });
//   }
// }