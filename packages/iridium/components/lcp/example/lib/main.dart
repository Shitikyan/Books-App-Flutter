import 'package:mno_lcp/lcp.dart';
import 'package:mno_lcp/lcp_native.dart';
import 'package:mno_shared/publication.dart';

Future<void> main() async {
  String passphrase = "passphrase";
  await Lcp.initLcp();
  LcpService? lcpService = await LcpServiceFactory.create(LcpClientNative());
  if (lcpService != null) {
    ContentProtection contentProtection = lcpService.contentProtection(
        authentication: LcpPassphraseAuthentication(passphrase));
    print("contentProtection: $contentProtection");
  }
}
