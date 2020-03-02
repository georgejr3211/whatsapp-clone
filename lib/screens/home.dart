import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Chat> chats = [
    Chat(
      title: 'Alice Whitman',
      image: 'https://s3.amazonaws.com/uifaces/faces/twitter/arindam_/128.jpg',
      lastMessage:
          'Alice Whitman: Dolores laudantium provident atque eos ratione ipsa sit. Ipsam ratione quae sit est soluta sapiente ullam quidem. Quos quo molestias blanditiis. Illum ut temporibus rerum dolorum aut sunt ut.',
      badge: 3,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Ms. Electa Moore',
      image: 'https://s3.amazonaws.com/uifaces/faces/twitter/psaikali/128.jpg',
      lastMessage: 'Ms. Electa Moore: Fuga nostrum quaerat similique dolorum possimus fugiat.',
      badge: 1,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Allan Stehr',
      image:
          'https://s3.amazonaws.com/uifaces/faces/twitter/roybarberuk/128.jpg',
      lastMessage: 'Allan Stehr: Facere deserunt ad accusamus non nemo iure expedita.',
      badge: 7,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Mikayla Ziemann',
      image: 'https://s3.amazonaws.com/uifaces/faces/twitter/samscouto/128.jpg',
      lastMessage: 'Mikayla Ziemann: Atque qui illum tempora nihil esse.',
      badge: 4,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Jacinto Crona',
      image: 'https://s3.amazonaws.com/uifaces/faces/twitter/instalox/128.jpg',
      lastMessage:
          "Jacinto Crona: Harum sunt qui. Ad officia deserunt consequatur sunt iste mollitia. Suscipit suscipit distinc",
      badge: 6,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Ashtyn Blanda MD',
      image:
          'https://s3.amazonaws.com/uifaces/faces/twitter/BryanHorsey/128.jpg',
      lastMessage:
          'Ashtyn Blanda MD: Doloremque impedit dolores quos autem odio ut nam. Nihil vel totam qui ratione provident beatae.',
      badge: 12,
      dateMessage: new DateTime.now(),
    ),
    Chat(
      title: 'Alejandra Turner',
      image:
          'https://s3.amazonaws.com/uifaces/faces/twitter/yassiryahya/128.jpg',
      lastMessage:
          'Alejandra Turner: Debitis eaque consequatur accusantium consequuntur eos corrupti eaque ipsum porro.',
      badge: 2,
      dateMessage: new DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (ctx, i) => Divider(),
      itemCount: chats.length,
      itemBuilder: (ctx, i) {
        Chat chat = chats[i];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                chat.image,
              ),
            ),
            title: Text(chat.title),
            subtitle: Text(chat.lastMessage),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${chat.dateMessage.hour}:${chat.dateMessage.minute}",
                  style: TextStyle(color: Colors.green),
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 15,
                  child: Text(
                    '${chat.badge}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            // isThreeLine: true,
          ),
        );
      },
    );
  }
}

// Container(
//           margin: EdgeInsets.all(15),
//           child: Row(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.only(right: 15),

//               ),
//               Container(
//                 width: 200,
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       width: 200,
//                       child: Text(
//                         chat.title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
