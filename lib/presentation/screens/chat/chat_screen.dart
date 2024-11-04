import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_iridian_pech/domain/entities/message.dart';
import 'package:yes_no_app_iridian_pech/presentation/chat_provider.dart';
import 'package:yes_no_app_iridian_pech/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_iridian_pech/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_iridian_pech/presentation/widgets/share/message_field_box.dart';
class ChatScreen extends StatelessWidget {
  
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/236x/ed/cc/c1/edccc138e71acf617441f7ee636e3ebc.jpg'),
          ),
        ),
        title: const Text('Mi amor 😍'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

 
 
  
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch <ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  // Instancia del message qy¿ue sabra de quien es el mensaje 
                  final message = chatProvider.messageList[index];

                  return(message.frowWho == FromWho.hers)
                      ? const HerMessageBubble()
                      : MyMessageBubble(message: message,);

                  
                
                 
                
              }) ),
          
        
             // Caja de texto
            MessageFieldBox(onValue: chatProvider.sendMessage,),
          ],
        ),
      ),
    );
  }
}