import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


class MovieHorizontalListview extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? loadNextPage;

  const MovieHorizontalListview({super.key, required this.movies, this.title, this.subTitle,  this.loadNextPage, });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Column(
        children: [
          if(title != null || subTitle!=null)
            _Title(title: title, subTitle: subTitle,),

 
      Expanded(child: ListView.builder(  
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),  
        itemBuilder: (context, index){ 
            return _Slide(movie: movies[index]);
          }))       
                
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 122,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  movie.posterPath,
                  fit: BoxFit.cover,
                  width: 150,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress != null) {
                      return const Center(
                          child: CircularProgressIndicator(strokeWidth: 2));
                    }
                    return FadeIn(child: child);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 150,
              child: Center(
                child: Text(movie.title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subTitle;
  
  const _Title({super.key, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        if(title!=null)
          Text(title!, style: titleStyle,),
      const Spacer(),
     
        if(subTitle!=null)
          FilledButton.tonal(onPressed: (){}, child: Text(subTitle!), style: const ButtonStyle(visualDensity: VisualDensity.compact,),),
 
      ]),
    );
  }
}


