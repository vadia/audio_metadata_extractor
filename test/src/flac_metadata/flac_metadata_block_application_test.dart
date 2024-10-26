import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_application.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_header.dart';
import 'package:test/test.dart';

void main() {
  test('flac metadata block application ...', () {
    var raw =
        "534d464d4742504d535441454d4d4c57010080000000000442a09f4953544246535441454d4d4c57010080000000002411502f2730382e38253c363a2627253727295150281d2632393e3e3cff2a3b3c2a3e245553545341535441454d4d4c5701008000000000080000006a0000006a53544d4f535441454d4d4c5701008000000000a00100003a0100013a0100023a0100033a010100140101011401010214010103140102003c0102013c0102023c0102033c0103002d0103012d0103022d0103032d0104002d0104012d0104022d0104032d010500370105013701050237010503370106001401060114010602140106031401070030010701300107023001070330010800270108012701080227010803270109002501090125010902250109032553544846535441454d4d4c5701008000000000a00800290008011e000802440008032c000804400008052500080642000807390008082f0008094800080a4b00080b1f00080c1c00080d2000080e3000080f260008102e00081139000812350008132b000814100008153c0008162d000817270008181a0008192d00081a2900081b3700081c4700081d2b00081e4a00081f320008202b0008212f000822310008232f0008242e0008252a000826270008271e0053544d4d535441454d4d4c57010080000000038e0000003c00010000000000000000030cffffffffffffffffffffffffffffffff42a09f490404000e0082000000000000000000000000000000000000000000000000034a0000002c000177000037f87b000000000037f87a02100004ffffffff0000004f0100003409000013100000012f0000070000031600112f8000010000284c00112f8000100000284c00112f8001020000284c00112f8028030000284c00112f8000040000284c0011108000800000284c0011090004960000284c0011012000ff0000284c0012010000ff000140750013090004940002589e0013010000ff0002589e0014010000ff000370c7002109000448000488f00021012000ff000488f00022010000ff0005a11900230900044c0006b9420023010000ff0006b9420024010000ff0007d16b0031090004480008e9940031012000ff0008e9940032010000ff000a01be0033010000ff000b19e70034010000ff000c3210004109000496000d4a390041012000ff000d4a390042010000ff000e6262004309000494000f7a8b0043010000ff000f7a8b0044010000ff001092b40051090004840011aadd0051012000ff0011aadd0052010000ff0012c3060053010000ff0013db2f0054010000ff0014f3580061012000ff00160b810062010000ff001723ab0063010000ff00183bd40064010000ff001953fd0071012000ff001a6c260072010000ff001b844f0073010000ff001c9c780074010000ff001db4a1008109000490001eccca0081012000ff001eccca0082010000ff001fe4f30083010000ff0020fd1c0084010000ff0022154600910900045200232d6f0091012000ff00232d6f0092010000ff0024459800930900048400255dc10093010000ff00255dc10094010000ff002675ea00a10900044c00278e1300a1012000ff00278e1300a2010000ff0028a63c00a3090004900029be6500a3010000ff0029be6500a4010000ff002ad68e00b109000452002beeb700b1012000ff002beeb700b2010000ff002d06e000b309000494002e1f0900b3010000ff002e1f0900b4010000ff002f373200c10900044c00304f5c00c1012000ff00304f5c00c2010000ff0031678500c30900049400327fae00c3010000ff00327fae00c4010000ff003397d700d1090004880034b00000d1012000ff0034b00000d2010000ff0035c82900d3090004580036e05200d3010000ff0036e05200d4010000ff0037f87b00d52f0000110037f87b00d52f7fff810037f87b"
            .fromHexString();

    var block = FlacMetadataBlockApplication.parse(
        FlacMetadataBlockHeader.empty(), raw);
    expect(block.id, 1397573197);
    expect(block.idStr, "SMFM");
  });
}