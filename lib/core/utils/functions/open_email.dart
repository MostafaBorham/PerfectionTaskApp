import 'package:dartz/dartz.dart';
import 'package:perfection_task/core/errors/failures.dart';
import 'package:url_launcher/url_launcher.dart';
Future<Either<Failure, void>> openEmail(MailInfo mailInfo) async {
  try{
    final String query = 'subject=${mailInfo.subject}&body=${mailInfo.body}';
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: mailInfo.email,
      query: query,
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      return const Right(null);
    } else {
      return Left(Failure(message: 'Could not launch ${emailUri.path}'));
    }
  }
      catch(e){
    return Left(Failure(message: e.toString()));
      }
}

class MailInfo{
  String email;
  String subject;
  String body;

  MailInfo({required this.email, required this.subject, required this.body});
}