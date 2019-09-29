import '../models/location.dart'; //.. here is used to go up two folders.
import '../models/location_fact.dart';

class Mocklocation extends Location
{
    static Location FetchAny()
    {
      return Location(
        name:'The land of them zobies',
        url:'https://homepages.cae.wisc.edu/~ece533/images/girl.png',
        facts:<LocationFact>[
                 LocationFact
                 (
                  title:'Heresy',
                  text:'They Are incredibly dangerous animals that could transfer virus through bite or breath.Stay away from these monsters bthese animals are ridiculously strong and ugly and you don\'t want to be with them.',
                 ),
                 LocationFact
                 (
                  title:'The second man',
                  text:'There are no people who can surpass me loream dfd sdfds dsfd fg  ds fds f dsf ds fds fds f',
                 )
              ]
        );
        }
        
}
