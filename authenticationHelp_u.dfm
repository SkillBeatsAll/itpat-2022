object frmAuthHelp: TfrmAuthHelp
  Left = 0
  Top = 0
  HelpContext = 4
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '2 Factor Authentication | TournyMan'
  ClientHeight = 412
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 15
  object imgBackground: TImage
    Left = -12
    Top = 0
    Width = 605
    Height = 424
    Stretch = True
    Transparent = True
  end
  object Label1: TLabel
    Left = 3
    Top = 24
    Width = 380
    Height = 45
    Caption = 'Your unique secret code:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSecret: TLabel
    Left = 389
    Top = 42
    Width = 46
    Height = 23
    Caption = 'CODE'
    Color = 14933161
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14584182
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object pbQR: TPaintBox
    Left = 376
    Top = 208
    Width = 194
    Height = 197
    OnPaint = pbQRPaint
  end
  object Label3: TLabel
    Left = 8
    Top = 288
    Width = 329
    Height = 15
    Caption = 'Please make sure that you have entered your key correctly.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 317
    Width = 170
    Height = 15
    Caption = 'You can NOT get this key again'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 392
    Width = 119
    Height = 20
    Cursor = crHandPoint
    Caption = 'Close this window'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = Label5Click
  end
  object imgAppleStore: TImage
    Left = 386
    Top = 88
    Width = 158
    Height = 54
    Cursor = crHandPoint
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000001F20000
      00A70803000000DD7B2E120000000467414D410000B18F0BFC61050000000173
      52474200AECE1CE90000007E504C544547704CB1B4B5B2B4B5B1B3B6B4B4B4B1
      B3B6B1B3B5AFAFAFB2B4B6B2B3B5B3B3B7AFB7B7B2B2B5B2B3B5000000FFFFFF
      B2B4B64242435857599D9B9C242527DFDDDD3E3D3F03070AB1AFB0787678C7C5
      C68A888915181A6866684B4A4C3131337271739FA0A1090B0E59585A65646638
      373923232417181A8080818F8E904D27F18A0000000E74524E5300BF8F7030CF
      8010EFDF4020509F68770A0E000016944944415478DAED5D6963E3360EA52C59
      87ED38F164A69DEEFEFFBFB66DA7DD4D3A89EF43CB0BBC254BA41D2531DF871C
      B64491780408808712E442911E0E352A4A14F131B1D9A224298E5BD77789FD51
      764AA7435739E222581E4707EB4393F2E29017435734E282D8EE3243D775CA8B
      7A248DF9F70DCAFE3B748D233CF07840E51FE2BFCD29D148D7289F1D99862FD2
      64F4FBD0F58E08C46F3F1E8F4FF4AF6DFAAA7CAE505EE429FDFD98FED1A3E088
      F78CEF4766A78F3BA9E892F2E98E3A6D8F7F0D5DCD888BE21B257D992FE10341
      79969151FCE17F43D730E2E2F8F28C7F6C0EE0BB03E58CF16F7F0E5DBD882BE0
      5762B905E79CF2E91133BE48FE1EBA721157C1D71AFB719B94D9764679719A46
      C63F3328E7CB11F5E118E5A37964FC738372FEF344FEA4944F72FCE34B64FC33
      E32B71CC772BC429AF8AE8B97D7A101F6E7BDA32CAF3498CCE6E0024565BED28
      E54582BDF5D3D0158AB83A46D86BAFB784F2F42EE6DC6E02240FF77224949391
      3C2AF92D00ABF9768D29CF6651C96F0444CD5F0F098DC97F897367B780EF3F88
      0397A0F1142DE24A88DBC0E3135AEE13F480C3F41F43D725E24DF0CBDF083D27
      24F3961C87AE4BC49B20AD11DA252444FB35AE7ABA0DFCF6270ED312927A8B21
      DAAD008769AB24B98F94DF0E30E5FF10CABFFF67E89A44BC11FEFD3BA6BC2AE2
      94CAEDE0CB33DA260F7116ED864066D3921896DF1248604E288F61F9CD8004E6
      91F29B42A4FCE61029BF3944CA6F0EB74B79BE4728DB0714906191A58780021A
      30C665D6576CF8F5295FBC54FB4DFFDBEE57F057B99E9D7E5EBE5E91F2EB509E
      176423BB8F60C6DA3DD38347AF3953B57744F91CB76EA7B6FCC3529EF30DCDE1
      942354D5EB0B57EE1D514E1A3BDE29FF7C50CA2BB19BF9129463837159EB1E29
      BF38E58B953055BE94B3FBF2C98E2AF8F4B57F292D88945F9AF252398148B4A6
      A7148440F3849430FFE792158C945F98729571AF066894A3F976A7959357AB03
      9A6EA75B36C05784BE8DF927CA109A3DB3DFF8A3725C2FF3D3F4198AD028AFF6
      4981BF9DD4EAE8413F44599E3F291FE6849B1207214D94E3BB463BADA8125F75
      C037627724E3264B15D50195D8E79960898DD70828AFF2D50117A25D5D8E8FB8
      847CEFA1410AAE44B9C678B5F22841A71C2D0853F79C2EE925F04B2ACC71BE95
      4FAEC53DB3174437DD657B700EA623468546F9BDA047517CF96195893FEF5EE1
      A3959B7279177D36B4A586CFF3C4083E14AF856A3ABD5A08B01057E7E2749F20
      E37425CA99520A213C7B1461508E266BD154ADF4C912BEBDA3329DAE4074540D
      A9C408E5A5F00478DF50299F28BA948FD68E0FB7C8FC302F7FBA2857EF82BE4E
      DA722F47A53BDD0F7551FEF0AC7F86742DCA9D07B376C475289F68C6ABF409AF
      4CCA1F88C898F6CE08CBF9A93CD272E9454485983ED02FD9A84F8AA0CFC694E7
      3B62718BA5B843A59C7613DC2B3623225E4E14E930685A6F8B84DCC47A1657E1
      E916F19A59943323808B62D66725DA822B30DD52C36D2AA98BF2E9525CCDBDD6
      393519B335CAD7284CCFAF42B966D6A57DEB059372DA644A39E582925A25A4F9
      845562C3292B4C324CD409C88B9E99303BACB91FC83E949493BF78DC4FC9977D
      87751DF221D32B3280A0BCDEC19516E5B4A82C338AA2A456879D5A63ABB19AFB
      A65ECD8C02F994D5914AB7F04F4D5D85F2D952FDEFCE2B9E3629A7BC51B1143B
      E9BC8BBF81DE07F645CDC5CFAE23B772BD9043BDA49C90031120D152F6F7185F
      B2944FA1ADA04ACEDB4329352927B78339977F532D676A403B8D15C1589483E5
      264FA6E322E9CAF021E9F37E7A44710DCA75259F2CBD0A69A49C2A12F8EEE451
      9421225FA23CF8779AEEA81210F61F9EE0D68727590C254D524EE40A5A432931
      3BA960840C58225424B79994AB4FA24595E083C36D745C379D1B8B72B882F42B
      FA0C2D3C48504818770DCAB591DCD7D368A45CEFE3D07AE017FF3F2E5E693F23
      BDA0B64424A42B2897430654BE70F8D4F41ED15F0848F906E55A77A44551FE55
      469DA19D45B97575E315FD7105CA2B4D600F4F7EA534527EAF39CA44D5C8A784
      37AC4858E6F916AB3ED17CFC15B7E6ED94EB01BA5A7C7E22C5539F4E3C4432EA
      204F2F4AA8687FCA6BF319136BF87F4F943FA84932EFF49449B95020FD0B212C
      EC3FE081138B68F642FA5CB926FCF0EBFA502E29293375488231455A2DF29FD1
      3C72B3A3A80B506EBD19E35D517EA7E4C23D0772E40ED2A8B81B28272A551365
      C05619D37FFF4C86796E84BD28BF37A2E7487933141B14104A98949328800EE1
      6EC34E1DB9F12EA10E13BE64F682FB00D0739E72992084E2A955996E46F8BF35
      DC33A06127CDF7CA6FD8B802E5A243426AD30B06E574B4A03D48D324EA37081F
      2DBD7BA6A3388ED2F32D161278793EEE1BE10BEEF774DF084D9EEE9B45394DC9
      79BA4506AE47797E0C9A6532A65588F099D26A622522E121F584CC59FC1451FA
      782F8D4C3BE5EE204D65419812D21FC458454A7505695014ADA808D20229277F
      F88F921AAE457995FB24D60D2908D1D0841B04AB8400AE7FD549A66588459E2E
      992A6005ACD6D2129EA15C4DC5D06CE72BD2D48A5A187A8F9A8AB9732DF19299
      1C9E2F5B69CF442D948B60DD4939EDF36060EE70A7F2CFB85E81F28CD42978D8
      210D9FD0764DF607364BB29762603D9ECD2D716273F63515160B1AC49A8A3394
      B3842B992CAB32720B5553D20F588293F5377A0F4BB892A93076A53BE14A6F53
      8A3A4F39EDAEC7B5ACA14539CBC9D1542F9D470C48B207533E4F69FF3BBA876D
      16D96256B2BCE7B86E2D84921E16F30F33A44E9220A6FD5CFD59A65DE4C9CE50
      CE9DF36A8F94B9103A5B8BB2BADAEDE89C0CA38C5D999FC88C47EEC8BEF1D47B
      B5D72650CE52CEBB28DA89C953645ECD270FC6CB84FEEB97C5A608A3BC1CCB29
      C92C7F6AFE9634A8EE35B56F52AE2C89714C9E522990A771F348B3FCC2DD3947
      B9F63075C6937F32FE292853264FC99BC7BA4F9EB652CEBAAB3A5F8EACABB534
      7640281442793532963E4C53650D473E3E580C57A7EE35D528CF33BDBB882FF3
      4ABA0C5455D4390FE13A9FA51C6529946F7421F2DD9E081E288370BDCA367B67
      A629139214459DA79CF7E236CA952512D35DC8BA187FCAEF5DA6254B29A95571
      707B9759D5D52095522CD9C96AE17C45682CB53D11640914CC63CF57723914F5
      2EE00B5A2EB5BAEA8A298C87238DF7C68A92CE9315D15A6CD84FFC1EF168B236
      8A143072C8BE2A6851B0484B7D2642B42CD75D0B62B8E9456CD994EBEA05A57A
      320A0BD67C29670B105DC8EAE9BEC579F35A221371417852FEE0BFD8F442D165
      842FFC289FFA2C600444CE878517E5418C47CE07860FE501569D218EE743C283
      F23C681535C185B71A45F48207E545D8668968D807467FCAEF43378086648E22
      C2D19BF22A94B0C8F8C0E84D79A0B71E191F1C7D290F55F26B1CAE12D10B7D29
      0F1CC9C3F64C465C027D299F0579DB6257E747473EA5D3D7D929FD780DEA49F9
      DC7F2B147D9AA759CF6132317F07F1DDE2A44E1B4DEBE307F34E7A529E05AD97
      F2DE163D550E817B3BD9B825505ABD2E2F7743D7AA0F7A523E0EF2BEBC733032
      FB33B0FB57D6CE3C54E06ADEB7454FCA934E5735C177C1D642E6E487CDD5DE35
      3EFDE2C7D25D0FFD280F1BCABDE952251DB0CE2F1893165A2F7D2CDDF5D08FF2
      B019156FBBAEDA96CB9E04D6AFFEAD8AAC472319FFFD0E0D7E3FCAC3A64D7DC7
      616D6D67D0C93841D0AC7A45A2B3EAA8B2AC1D7C05BDF49A07B879A21FE5610E
      BBEF66495DBB2EB433AB375487421E225C2A8E9BDAA523E5149E941B39DEA1A6
      5E45124A5D488DD4834B55031429A7F0A41C46938A2BFB3052144A6EF9697227
      85B2DAE7D3507E1714227952CED5AB3AC129498364BB44D3ED8145C431CA68FE
      69280F9B54F1A31C047AFFCCC51870FE5500201BE43A9D54183F49F0A7A13CCC
      B0FBAD72846E56AE41D10649BA0287AE46086F4376EA4839855F48CDD50B6B17
      046B432C90151909A7A9829842D62C524EE1756233B84D449A4963393CF30107
      7417C79A380099BD7D2BE7EF69E75BC416A7153D3E334DB7EDA6A39DF28CD78C
      ECC8634F0041A5DAE304CA74C722BA2C3F26D693F97E3CDA9AAA588E76282F55
      75C1ED631981FC548F7A8F96FD282FC3F2203E5D1E26D1F8D18D1476D2958B9C
      1DF753AB678719131ED069297372BF29F92769139EA0FCACF3E8540BADA3B077
      0CB53C994F5E91D64069CADA12AD7DE408A39E19AEB74CB87AF9DADCAED32643
      8FB347088572D3C5D4CF3F572857DE04C2D0E6170AAFFCECBA9E73942B87C9CB
      7BF40DB992723173290F44B26FCF27BDB253FD280F5CF9E6B10CAAD42233CEAC
      3D3F23297724C2D5E48DA4DC61B1DAA646449EFF5CBF3D4379C3F4AB56AAA05C
      AE1300D1B96FEF959E7AD3C9538F300D6C79ADFD67952328774E7D281211948F
      5C63540BE7B2E0339CB753DE3834AAAC01E533E9A7AA074DBB1EDA4399DE7489
      447F3507B3C26D2EB4D8EAD54079E9CE15C991000849DDED6D9EB4516694DA47
      FD56CA5B9C2125430F942B4E1F935CF3ED3DF4BC27E5A1ABD8FBC6572068F504
      37E460063E175C54BAB60B2DB308C9C79AB01A3BA536A6F1C3329C28E913C418
      CCEF66D6435D6F30DDD628299487CBB41EA73C579D4B7A28A172484E8689632F
      84E82BD99E9407BAECBD97B84E8CBC3A7439D3B86A03CE34A311D7E255EA8D18
      FD75CA27F448A3F94AF1DC1BCDB6D159AA5D6B78E48ECBE5FA60B014F3A35022
      D98F355B3A5BDF2D2735FA4791869CD9C933F15167C9BEED0AD7BEB1B961D765
      946E3AD7EE4514CAE926C0A44A9CF25E2469BD9A97EED86E42D61C153B29170F
      57A308594951718572FA7A100EA16FAA104580D2D9B4BFED3A76D49373688F54
      3D48751B21BE42B9A6A6A2BAC0A442B95613C979A39A572717BFD56EE272F99C
      948B559B9AFB29CD75A91CF6C7A0AD2A81C6E822149C77CD43F7A53C7430EFC7
      3934520AAEC1B24BCAF5A537529C5CCA9272C31F1033652DD179C34AA8E9666C
      7DE1A25C68A9B13C487886F0B9A05CAB0B5838D39181ABBB8EE67D290F1DCC51
      9F039C21F3A3B41CDA6D741C793AB4619705C5DCEE49CACD4950A1822D39C2C6
      99C4C9C920DD4539F4186BEC106FED7BD5FFD715173AA5492D48A9AB2EF5DE79
      1A1899B387760CF55C2A0DCCE866AC39510286828B53506EB9E6E29BB6B8DB3A
      DE50C0C808BA2887CFAC0788E5173C930C94EB06A7295A71D8C256F4A63C6C95
      0447C737D0BB066EE8067AB70169DACE9731D4B5100B65B44FF855F9D1EDCE28
      CE2072522E88B5A981867205769A6A5066DB4D8326764C74F5A6FC0296BD6BF5
      9CEE397CA893DB4C978831E44B31296CB9CB033CCFD46BBE4A5C664A4BDD3928
      77CC90988FE67402E59A90E0767BC8064A3A1ACFFE0787041F1543C5D3A5E380
      20748584E7DFB994CAB1FC15AE670269913B7CD5A96EF9C9A65DED850ECA8148
      0733E0C029273BD3DFAAA8C1BCDD5B43CB84DFDD713D427FCAC37D76D4318874
      A733E0F95A03E15247A0A24B1A787588474C13769DE3CD27477D1C510A6DA1DC
      E12BC0A3796F73527E3ED7DD319DDD9FF2E06C0C41976D4660AF2ABDAD279732
      B62C42812EC27A99C8B1DB02140DEB33AD5F6AF3F1B2C7392A04E6C631A619BD
      EDBD511E3AB542D0299E989C492DA846BC8572DD94378F88B2907EF37DEA8A05
      A9E68E0AB515AF5FEEA4FCFC807A3DCA2FE0C075592B71766E5E1D1C7A53DE26
      F7BE53BC72924D8EE697A7FC7C747C3DCAC393AE9DB6A09EDFFFE6106767CA5D
      DE2D14D27B73ABAC6A6D96F539B43C5CCD3B2D883ADFB194622E3196F776DF1C
      7515245D6F2C9F344A3FEBB666C9EBA4E673A3EC197452F20E5EA212AFF7F6D8
      1D214300E54209DA28BF90C7EEFFE64B0E2FCADF62D563978D31B683EC88CBF5
      3D0740B96B61744B5C5E81717077767BC9B38372483338E243235BE064B77111
      585FF81DC11F9475ED36E480199C39840C75B5770AD8CADB3DFB068276D50F6E
      6B9866EB44794B6F0BCBBEF5841FE5EEA9E38EE8E41D8984B46B161824248507
      12B63554588B5A139C6D6A4484E04A629DC9CC75A2BC438E9D57CA49B9635AD1
      0F6FFF6E956E996070BA9C11BC183A45EF699E4903699A3369964321BE719D59
      7066E782D1AF106A9D49B32420DAC3FBB77BD8BED49E27DF372879E7633ACEEA
      1A734B06AC5994F3F3E5FC52395F6E96DC3E5FDE3C55A7DE6B9B1DB530304E56
      19E6721737E5707B638FB9D64C1A87AF69EF787092D9EF0D58C293790A7D3497
      7E3F3708CAAA98C2B543A4C970B62E9A115FB666DF64A38CA123337D1337E5B6
      6D832A2DDB6465C1FBD5780B3F2FA2A3F3618FD61AACA048494DA9F294EBA05C
      6BDFD4A3DAE46491FB2C1A998BB0BD3BD7D993CE104284EFDAF0208A168E4243
      3C668C51E6E3AFB62A46C0EB78818E0922E14A35F510D34357B391520F1FD6AD
      2B5C73B1D947D9E8D594349099217D939BB2AE586D5D627FA4F61BC5384BB748
      7CD840B9B8527B01A6E8705D77FC05BCF3D42321D3F5042FD1B8265B0556000A
      D412D07949A89E8F9497700A0DD057A36729D9E9BBD829FAD13420AAB988690A
      7D693E528F6F556A2B84334B14D59022837541CA4C9CEC6C4D591779FB24E5A5
      CA5EDDF920C590371BF75E2CD1F90444685BA35110FAC2BBB608D21AAA24863F
      116D355CD81C0219566D4A6AA03B52AA49325615F0215D7B2773B5D7B79DCB21
      BA89723523999F26CB44BDBF738A268472AD015DD0D5F408BBDE7C0370CC2912
      2B09DD664492219648B857B0B58D87E7D686688EA3310F51BB3F6E104E636EB5
      E5F6AB6D50D2E1E69C6CC372EEE2E8BCBDDC0E732D0827995D221C64272F8E9D
      A7E9C455F77633D4CEB991F8D3678544431A495385D39C4E6FBCBDC7A12C61AF
      AC9F9F0C5D99EDF93118559D1A02EAB1F11DC4D59268322CBB8C891CBCA881AC
      9C4973F4D773C72DB724A00C9FCE8C6864DF75AB892E9C961914F71BA5ADA7B7
      218C723DDB3ECD74E3F2A0BEC43CCB3A7B7B9D0EE90092992956C260C54D67B5
      DAB932D5B81B58E7319CD714D7091014D6D60543215573E508750C0BD13A69E6
      E8D38EA7B7209472B10E28CF725B8BF3F181D57AD667D8178D6A4B2D8ABE46DD
      6435F351E51BF930B31B6AF3E5A5BA5BB39BDCE6C783D59286B72EA8DB1CB496
      68152492339FDC3E4F5A8D0EEDB79F4130E5B80AE50BBA3B360D8274DAB19F9B
      57C294569BB582A39D10DD056824BB162FF483323D99D532964854C59ED6ADBE
      EB7EDC0A3F450AAAD1762613AE24764527CBD9B3F545B52996D8ED2FD78EDB41
      00E37563B96DB79FC105287F0FE83CE5D0B610AA0F72F6EB126BFADF1A91F29B
      43A4FCE61029BF3944CA6F0E91F29B43A4FCE61029BF3944CA6F0E40F9D71F43
      D7240891F2EEF8E56F46F9C3FF86AE491022E5DDF185BCCCA02A22E5B7034CF9
      3649EED1F7FF0C5D938837C2BFFE40FF10CAD129BCAC880F8111C294E79348F9
      ED0053BE4AD23B847EFD7DE8AA44BC097EFB13A19764927FF8C03CA22B4858BE
      4BD0C70FCC23BA8284E5CF091A4FD1E2BF43D725E24DF0F88496FB048DE698FD
      3F86AE4CC41BE03BB6E63F4F09CA6698FDBF86AE4DC41BE01BB6E6AF8784ACF4
      8C61DA6D008768DB35C95692302DAAF90D8028F9CB91505E246554F35B0056F2
      4DBDA573122401F7C1A75622CE83CCA291B7FB12CA8B111ECDBFFD39749522AE
      8A5FF1D8BD3D6DF9CCE38CEC11FEF2F7D0958AB822BE12334E8FCC6093CD7729
      428B2472FE79F1B57E223139F993515E9CA691F3CF0CCAF892BDC41B5E047F2C
      23E79F1794F14DCA76B28B03AB32CC79F4E13E2788E7863670248238418B711E
      63B54F08129D49C69543D3A6BB29F915F3709F0CDFE834E93217E793A86F82CE
      53FAFB318DF36A9F05DF8F6C5EFCB893A7D7684723CE8E05FDBD4893515C1BF5
      D1F1DB8FC7233B12659BAAA73FEAAF632AEA5129FEF9BE41595C3BF111F17840
      A5B4D49B53A29D1867BE81AB38E4C5D0358EB820B6BBCC3822D0F1D2B5EC944E
      87AE68C445B03C8EEC9D39EEF7EC15E9E150A3A23C5764C43BC5668B922C3B3A
      8F00FD3F345FFD6A6A399AEE0000000049454E44AE426082}
    Stretch = True
    Transparent = True
    OnClick = imgAppleStoreClick
  end
  object imgGoogleStore: TImage
    Left = 376
    Top = 148
    Width = 177
    Height = 68
    Cursor = crHandPoint
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000002860000
      00FA08030000000B2B76D8000001DD504C544547704C5757575E5E5E6666666E
      6E6E616161787878949494A6A6A68D8D8D7373735C5C5C9D9D9D848484929292
      6868684949492A2A2A1515150000001F1F1F7373739C9C9C3434347D7D7D8787
      873E3E3E5353535959596A6A6A0A0A0A7D7D7D5E5E5E20202040404070707010
      101080808060606030303050505007150A174A241D5F2F277E3E2474391A542A
      10351AB3B3B3E6E6E6EAEAEAFFFFFFE2E2E2919191DDDDDDF2F2F2C5C5C5ECEC
      ECF8F8F8E3E3E3EEEEEED9D9D92A894434A853319E4E030B05D1D1D1F3F3F39F
      9F9FD5D5D5EFEFEFF7F7F78888880A20102E94490D2A156B6B6BADADADB9B9B9
      F5F5F5F6F6F6C0C0C0E9E9E97A7A7AF4F4F4143F1FE0E0E0F0F0F02169349797
      97245D63E5E5E5BBBBBB3264B83A8DAFF1F1F13A75D64285F43D92B7CDCDCD38
      A44EC9AF136E53023AA54ED6B813FBBC04DCA5043F2F013BA64EAD82031F1801
      3DA74E7E5E02100C00ECB1045E47023FA94EBD8E039D760340A94E4F3B018E6A
      02909090A0A0A0CD9903B0B0B0D0D0D03CA8542F230135A65CB9B0374C81E9C5
      784BCA4F59EA4335F07123E86E21B0322839180ACE3B2F491511DC3F3275221B
      932A210F04033B110D581914A22E251D08074B81E9BF372B4980E8671D178426
      1E2C0D0A4880E84780E8457FE746467587D0611D0000002074524E53003AAFD9
      EFC7FAFFFFFFF690FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF6AE6FFFD4E7DAE0A
      000019914944415478DAED9DDB8F5BC779C067482E57ABD57245912B3589BBA2
      4CDAB06439967C6B9300AE5117B5BB42FAD0F822CBED7302E71F685014411A14
      41D1C7A269D3A245D0D4962C39455F1238451A387D2882F82A57BEC091DA952F
      B12CED452BADBCDA5D5E7A6E3367E69C39E7CC9CE5901FA5EFF720AEC83957FE
      38D76FE650822043870EFB041004354440801A2200400D1100A0860800504304
      00A8210200D41001006A880000354400801A2200400D1100A086080050430400
      A8210200D41001006A880000354400801A2200400D1100A086080050430400A8
      210200D41001006A880000354400801A2200400D1100A086080050430400A821
      0200D41001006A880000354400801A2200400D1100A086080050430400A82102
      00D41001C01634A40EC33E7D040CB4D3EBE5DF38E77663E82012C571E25ACE2D
      736D542CA283888A5EBB9367B33C3A1527DAC3BE5A042CBDCDAEF946E61AD21D
      9BDE6BD92D96B164463C6887F4C6E815EFEFC29A7125D158A3C9B6B7C978A130
      EC2B47C051A297DD177ADDD443530D27A95B204F753017445474B72D3BFFF64A
      864D15439D3C0B2BA5F5615F2D02966D8BC43C3F34D390969DF4956EFEFE21E4
      C6A73BE65411E99AD136661A4E6DA2854816B4E07858F8D4681393C4C531B410
      C9A6B4E2FCB361D26F63A2219D742A86BBB05E8864E1D60FC7AE1A6C60A261A9
      E414CB39FA26919B8ECD0DB3ECD044C37127F176ECA941B2E9AE99658706568D
      151D134BC3BE406424282F1352FF503BB98186E5022113387682E830BE44C8CC
      07DAC90D3474CAE4F2D8B02F0F190D262F12B2E7BC76727D0DE93896C988364E
      A95C5AD54EADAF61A1EC34C48BC3BE3A644498BA40C8BA7617B3BE866EDF3556
      0D114DDCAE43FD2E1B7D0DDD5E43D410D1C4EDB2410D9121831A2200400D1100
      A086080050430400A8210200D41001006A8800003594A850427BA4B02CBCB54B
      4ED15921D3B141CACE4AF877AD47C812C948C4A86F96BB6D227FE01E902ECA3B
      6C5F19F69DB10B1C0D77FBEB3A50FDB0B37E335D09567CA29DD5F07B9F95AFA2
      F0BFE4D6D8FDBAB214FEDDEC90D2599291C83FDEEEF56D1BCEEBF8DAF64BDDD0
      7CF78013BF0ED53CF029295D52287C230145C35BA6D9BEE952EDCD61DC89CABE
      0D619AE24E3A1F88D19457FBD1D170E21D0D0DEBB3AB1BE1FF26162E093B2064
      DBBBFC234743D1CA1B12181A7EFE524D3CCAC54F067F236AB50DF98D5DEF2F78
      AF9634AC3516A54F6B175745EFEBF465F6096A18C592860F4457D399A4BF18F0
      7DF8C2257799935E6FD53B7AD9FD4FF93DEF1357AB5F87097B57DC0AA4CB9DCE
      BB9F7D8BBDC909344C4F44AE1D76AD2F972E906E61FF07BB1DE36FF9786999ED
      C0FDE8024B8E1A46B1A3E1EE3DF148B3A5F6C541DE86DA810F9CF35D5D09BEFA
      DACC75B2F3439E1BBA5AC571F33B276F8C22A74F48F48545C7C25AF71C3BDE6E
      B73E30FB5F6C0775E7D0D3A783B4A861143B1ADEA9DCEDF200AB8895C3E79DEA
      E047BC7A46AA3BF6CCFB165AD1B0BE6B436E865477395960E99697821D749DA6
      CBBE33C1E9A08651AC68F8BB09F91E9DF9D9A0EEC2DDCEB75C3BBF20BE556165
      A20D0DDDE3ED7D4B3C5EF59E73CE5B6F2EFB3BE8EEE92D90890B7E218D1A46B1
      A2E16F252E2BB6B8773055C4CAE7D648ABFD92FA430B1AD667D64869E1B27C0E
      6E863CF3B2BF83DE953DD71D355FF73E410DA3D8D0F0969D291F7EE6934194CC
      BFFF1E6F90C4B1A0E1E165C5F1EE77CAE0EEFB6C07D39F5D63F2A186516C68F8
      C847A9475CFA4867275BC36D9B365E4AFEB0DF1ACE16C82DA5E8F12A5F7C97DC
      F1DF57D80EFEE01DD679881A46B1A1E11C4D9FA03AF991F57195DF394FCA4B0B
      091FBA5684FD98C2885C7E0DF7F554C7DBBF46EABF5A613BA87EE94CD079881A
      46B1A1E197692763A2F462C772E7CD5EEA17871EE218B23BB42B775F0B7DD0F9
      35948EC7B967C9DF7DB083874A67FDCE43D4308A0D0DFFD0C962B226EC2FECB6
      5A4574F2A1508B96F0FC8CBD3FB7A2A1743C8EDB7C76DB286C07AE966EE7216A
      18C59286849ECB3AB0D5F13D2977DA2F8C2CBBEF0E2B3724F5BD8B5EE7216A18
      C59686D91E92DE94BDCE1BA96E789F50690B341406F3841139BB754387C3931F
      BA9D87A861146B1A6A7868717C4F6A294F07AFE5ED9415CAC368293B54A70A6E
      E7216A18C59E863A1E5A1BDF53F61BD6F62D90ED6F0FABDFD07B6B6676D131F0
      73A861048B1A6A79383969657C4F398AE2B6186EFF8FE18CA2B01D3CE868B96D
      FB126A286353432D0FC9E26FFED2C25D508C29EFBCEF2C99F8E8CA40C794FDE0
      2E6107AE9B6EB40D6A286155433D0FAD8CEFC5226C48ADDA0E22AF061761D35A
      7939BA03B7F370DFFFA186327635D4F4D0C6F85E24DEB072E8DA22F133434BF1
      861B8BF178C343FF1EDFC1C3DE2D410D252C6BA8E9A18DE06C31FAFABE77BD99
      5141DCAB3C98278CE66D454321FADA9170DD8DBE26C530FA3ADC81DB79881A46
      B0ADA1AE8716C6F7627351262E25CD4509D89286B1B928FB3AFFB3ACDA81DB79
      881ACA58D750DBC3FE8FEFC933F37ADDD5C49979015BD3303A33EFE2A27A07D5
      DF58430D23D8D750DFC3FE07674FDFB9BCD70BADEA923B7EC1474BC4C13DA2A7
      61FD159291C83FDEC10F54F394DDD19470076466BAED8FAEDCC880D350DF431B
      E37B154ACA1BF2AA0DD3728A7034CF9D7BD78BAFA650DF24C2320C0989C2C4CE
      E122AB36B8075C89FC5F3AA31B10781A1A78483E737AA0F3F7105B00D4D0C4C3
      612DF180F417881A9A783888E06CC43A203534F2D0D2F81E3248606A68E6E180
      E6EF21F600AAA19987B751FA434BF7071908503534F1F00E6F61C413B66E1162
      1FB01AEA7B7857DB3BAD127DD6D23D42AC0357435D0F0FADB3B31AA7FF62E51E
      21D601ACA19E87A185CE01E9F72DDC22C43E9035D4F1F0FE55E99C767C8A55C4
      5104B486D91E462C7498DAC49279F480AD619687BFBD123FA389EE0FFA7C8F10
      EB00D730DD439585EE36957FECEB3D42AC035DC3340F132C74D8B18E9D372305
      780D933D4CB6D061E7F52D57112BB4DC710E1F7D88136201F81A2679986AA13B
      CD6E2BE37BD347DF11D63A6ADE76AA7B83C79D0E9911D050ED6186850EB5E59C
      9D37956367CFC6DE9C3B7529C7AEFA4EA514DC93C53C5BEF52BD49E94252BA81
      3DAA6F14345479986DA1C3CE7FC87147A6EF7E5FFD41F34D00224E57FDD7E019
      2A8634D46FB76E7F7E51996E7950F59191D030EEA19685844CFD93E9FDA8FCF1
      8F933F9C7D63E80FF2B4A2A143F38D45453AD4307260D9434D0BCD3D7457AE49
      A1F5CA65DD3D59C29686841C797E21960E358C1E59F450DB42E76B33E942AC3E
      F5E3AC248F3E3FDCB68A3D0D09B9BA184D871AC60E1D7A686021A1CFEBDF8BEA
      B11F65273AF2DC503DB4A961E8214B871AC68FCD3C34B19090EDDFD74D593F24
      17C8B3FB4FD176B9430E96A5F7AF0DB5A1625543EE214B871A2A0EEE7B686621
      293DA799B0F28068DBDCA97698EBD5BF728E7F7635574F49DFB0AB21595D90D2
      A186AAA3BB1E1A5A48C849BD645289FCE87391267195DEE38B38640BFBA4A1A8
      57B5F49517F97F8EFC6D623AAB8C9286AE870F7D626821D9F3375AC91E0C7B0B
      C53623C76FBE0CDB420B1A3A54FE84FF04FD0B4C48678F91D290D0BDF463D32B
      2C688DA5EC0C1F20F9E8DFAB93D4A6866FA11D0D09F91ACB109BFF999ACE16A3
      A5E1ADD47CA1572D0DEB3BF89FC9AAD57B43B7D09686E4EB2C3FF46A87C9E92C
      31521ADE5AA0F47DFDE43E5A857258240F3FC34BC59686FC77F8C8F7086A988A
      63A1730AA61EEA34516626D95FDEB700185B1AF262D9DB714A3A3B8C90869E85
      C61ED6FE4E23D1C3AC4F32DFB73B40AC69C87F89F304354C21B0D0D4C38E46D8
      21FB6E49EB97438F5DD03CD5BE6B5865CB89CE13D430196EA19987133D8D28EC
      67D850B2F07C50A058D3907F364F50C344040B8D3C1CD798A6C73382D6ABE063
      AC514332440D250B0D3CDCF1CF1A896A53C11F5B689F54C61EF356EF3F78A293
      F6D5D5DB4F7AC90E9C282D24A7AA963A07DDD733C5D8F8759286F5F6D1B71336
      116804AF0ABD7853793E299D7B8977FD88B43632AE310FA3A161C4426D0F6BD7
      742646F1BEDBA59C35C36AE1A83012D86ABDA056AC4A0F0BE16ACDD671F5E1C4
      3908ADD77ACBE441FFEFFDEE8F44A9A1B4E356F378E2653482578586ACFFDEEB
      BF56A4ABDD29DEF2568B0D77EEFC7CF0563C2438386F72F0BB99777024348C59
      A8E9E18EB6D6F43CD64E0E06548D89C7CAAAC2B4F9B074882A78B1FAE48BD2FF
      5BA72F35829DBAE6A934DC15D971EBB5A42A6EB0279586EC26CC7D5795AEFE64
      2C06EE9193DEC9F35C3456AFE6854CD2B094C02868A8B050C743EDE51B1AC16B
      BE3259189015B81C0DD3AEDFAD98D8E538167967E6EE58F8F7D5E0EB4CD05075
      FCA4A04876A5710D7755D8D11615E9B85122CDD35EA6CF7AFEFD6140013E24A0
      51C88C80864A0BB33DD45ECC8677D7E48A248C46293222399DF28B24B13C4418
      DA8EA1D6507DFC233F507EF58DE035A621BF076465399EEEAB3F519E50EB8D05
      F1CA22B7AFC2A6F7E9B4A6E06B98606186873B26F5026B88F015288AAAE962D2
      56813ED3F7274D5E918AF8240B232556C2F7EDA3D430E957A0CE0F1B09571AE6
      C1FEE9C8E9124FDEF7502ACE15D7A2D3DC06AF61A285691E1AAD62C3CBA3F994
      CF62F83737C9021741B0640BA5E23B2D995A43EF69E0C9A9A334A49367548E85
      D551BF0095D2C9F1C012DE4F8DE7E072E1FB7BC156B1C25A05740D532C4CF470
      A26BB4ECEB1634942C983B41C8E325A1A2C60513BFC8D6ED4EB2277E752EB227
      1721CC87346F3BE93431A5EB5369F84C3887ABD97AA15DFEA3B37CC7AAAEF846
      F0FAA830D02E9D72503D66E9BC53FB5A28E9EC19427B4F088B09B835C9EABD67
      A58D7DF84F4A2B5604B886A91626783875DD6C1DA57C1A7A77372C44BD9E1597
      FA017E4E7C68308CDFE1D381679EE05F7EF3B5A0FCE4C15664F6B4AF66950AC7
      57681856E95AAF073BAE1D3E1B39BA4023E356B08A044BE769B8F35E56EAFE2B
      7B0A393B869FD5314F5B3F1576C5AE596F4800B6861916AA3C345FEF359F866E
      66C36BE152552C2C5A836259784368B784BB0EF2AD3099909109A5BE4243EEB7
      707CBE85A29FA4917E27F80F82A50B32EA99C72391E7E18C09B75DC26F839082
      BFA7D7FD005AC34C0B631EE659FD9A7FFD8A8E85740D7971253708C2C2D5DF23
      CFE56431F871835C8487F948C558E8615C439E194AC74FB99E46EA8D089BD72C
      1DAF2F549E3A77BBD802E1B511CF32563510EAA3BC9CD01B1280ACA18685110F
      733D0B20ADA59CAA211F8BE6B94800AFB47B5F12B732DA6AE0167BDEF148AB48
      2EC6DF8F6BC84B43A1E0AB3FC6AB72F18CA891761FE68E2F47D30977A44AA46B
      646725FF1C42E7D86F4AA3EBDA05B0865A168A1EE67C320A2F3F1495FAD4BA21
      CF7662FE4A5DBA891903AFDB7B5D1D2C4B8955A6D8CEE21AB2C668D8D8AE49A3
      8A3F25111AC977415A288AA58BB4A8C73BE4203970D25B028C1D7BDEFD87E5F7
      5C3AFEDBD10C8E80ABA1A685DCC3DCEBC8F19B3E171FFB8CF71B3E15DC71E7FE
      B2CC283E08C8BF05776647EC3BE230C93D5FD8F71AFB3128331EF73F2C9B65E2
      3A25A7DCB5B21A1DDB6E90049A6F480B38B27482449592306EDD6C1D3F14FC38
      E6BD7B3F259F09FF4DE98E8F82D550DB42420AE7B7B6AA26AFE8AF6834EA5862
      E71B627E5D8EAFAFC4CA24B7B86D10BE45049E0F3BBEF0A23B5E990A048D69C8
      FCF47F3E7E3B22A4F92A8D5D4E8328686E9E292CA8D38575C3632F46B66A89B9
      21FF0D05D55A55A32515A81A1A58E87AB8A5358679554EE7A609855123786B35
      1E50C3324A276BE315A7F9F8CEBE1E66ADCC2945FE11642D310D5966EA5653A5
      E01D92B42A283BE3ACA2329A2EECA189E15F153B95E0ECD97FB5BAAE5D806A68
      642129D2BF32481D23B10D9192D6B9C152D87C04F63D3805715AA02A2BBB1C91
      D8168A9A41F051A286D7369E8A44E524C57A358257430DD3C618FD8BE7F7C2FF
      49B2C2403B9A1DA68646168ED1EFE82756C2BB4AB22BD4EC1B11FC5269580BA3
      62D23414F233E1CF8454310D5996DB9433C2D9B71233F586E675CAE992DB69E1
      C5B373F12AC0BC6AAC53CBF100A9A18985E3F42FB5D326C14BE5EC1AB550E903
      A3A14862CCAD47237835D2301CAA51115C3CAF0DBAE6B14C5EB3B786C0D4D0C4
      C209FA6DEDB489F09E13556B4382F7D13877DB4EA1ACF8EAB20AE51055B344A4
      11BC1A69280C45BEDAF3369CA64FF37E2176F12C957307C5969726003534B0B0
      B8ED2FB4CF288DF00B4DBF73724F5F23791BC326CAB54B5C7045861CEC2C53C3
      478F67D529D8199B68C86BCED28ACBD3F79D93AF8A15C44EA599152E06D3B6E0
      69A86FE1D8F8B7B4CF279D303B4C1F89E7012D5E9B9A15D09A1D36715BC56C83
      DB1AAF4F053B4BECB0F168BEAEF1F408762A261A72D9E58DA4EE6BF1929757D8
      5F0661C4E034D4B6709C16FA501E078451CF698B0A47D6BDEA5BF7B5341B2ED6
      6BA41C4676FF13465690D977B4BE72760C130D59692B9F7E3C8F67D9F9DCB355
      F126E9014D436D0BA7E837F5AF321BA102743AA95C0E9B04BE2A7606F362DF9E
      14382039C9B29D584C57A5683A1725391DBB16396FE3F7623E7635B3612D511B
      601ADE7759EF103B37FB5329E40891A9094F9DA8DEC54D65A1CF7D0D6DE05247
      DACA3CDF896BC8058F147FD563EFBEA214AD11BCE6D150DA266C3DCFF3F722BD
      8B466B0FC0D250D3C2F1B17E550A43C48A966A7EA73090E04FC1208247B260D1
      402FDE2D991EE8C56A5BFA815EBC54E667E4E3E69FC1FC4D9946F09A47433173
      13A220E7F99B15F95168FABD350498869A166EEB63A530449A08126974560B87
      842E62AE4942D8EB61797E916ED86BF886F08DA787BDF2DF81E861906D371519
      62237835D150114D26CEC0990FB792FB318DD61E80A4A19E85C5C9BE560A43E4
      0949CDDB4EF98F34AC76E93129684008E3132601BC1E84A8084F3B4B9B04203C
      998F17E93CD71426010833E1151A8655093E0941F81524C71B9A68C86F0BF35A
      9A99206A28F573CF652FD5200048C3079634763F56EE73A550207D621C432C6C
      C42951ADDB4FD09E7A4A94987B346F3B59EC3C7E5635254AFC1A8FB44FD1DED1
      F7C48802D59428715EF3DC896E51DA245E2C36A2874C404C1776669166EB1421
      47E5409E79E16F61197BC35598E068A863E1F8E49F995C9C298A251362C8594C
      1F26880A2D92D4C15BF53CE567921FAFA6E87A6A04AF46A328E967352FFC2D5C
      A6496F0D01A4A18E85B5351B954201C5522D327C021C43EA429650CF0F892165
      59AA51628E52C3E407ACA93A401BC1AB9186C973A15DE6C5FF84D50AC325C4A1
      68A86161B1FA0DA34BCB45FA4F5FF1C494A4651B34170F89D4DFD23C542F1E22
      F423C9A7FA5C9F5ACAEA2C7FEE8C187D1DBB7BA62B4502D1F08B17B376BDF570
      2E3DE271C61CF54A59EAA5946281327C1056DA636C2925458069C6524AEA6840
      F5934E1BC1AB61BC61DCC323CFDDA5D290D7234D97CD85A1E197B29EFDD48F70
      2E5DC4F50505C2B66814C5C2726FC74762E406A687CA95CA213977D358584E68
      750734D5BDD7B9A3AFA34FF89D3BBEFCA04A43DE8365BA5224080D332DEC4B38
      973ED5C293919A7FABF5C39441DB6AEF6931474C8A749166152587484F3F1D1E
      BCD5724C6DF87F7BE6D50FF8FFD9FFBDA44DD2E25ED9C2976F674460C5D38947
      3872D2B9175F7DC7FF8FD4712F04059B317C0DBF4CB32CEC57389711D3F4C9E0
      461F3C416966E05CA510244F5FF597AD0D9CBE6E6FB5E0AF60BCFFDFDAC2326F
      A9DF2D5BA798EC7F61D3CED30CAA859E7B84B4E59279996CBC66F6F0359C7BE8
      42EA6EFB17CE35A2B0A16BF88F29602D14F3F5E187AFE15F7F9CB6D7BE86738D
      26AC3A6812B1321CC4284B3386AFE13736523EEC7338177CA69F3E1E6DB6B00A
      D7C09E0E9117D62965D875ED327C0DC99F6E267DD2F7702EE0547BF79E8B8F04
      3F1C09B7078BF1B4D010001A7E7355FDBE8D702EC8D41FF33B8A22930572CCEC
      180E29D3183201A021F9B6B2D263279C0B302CDE500E1EE45DC7E0AB86EAD902
      7A40D0F05BEBEBB1F7AC8573C1251C09133C0C073072E431032577D7B50B040D
      C977AE463CB419CE051621A2EA4A30CBAEF2141FA8CB93C70C14E981CCA680D0
      90FCF97A47F89FE5702EB048F310CEC88BA3837FAA24CF0C733D5D0686864E3B
      A5C4AA3E37714F614A7C8D7957DC80315EC44B028A864EC9DC5DDB20DB37BB83
      09A48149A287E08B645EA3C8D79282A32142123D046F617CBD573350435828C3
      6EE18F26F3AEEB9C8FA4460D81213CDE2760362B2C0B00690FF5D0013504871C
      3C38F72CF4A1649799A0A783E66C49A18600A9963A47CF38AF074E7646C1C13E
      801A2200400D1100A086080050430400A82102005B1A16C75043449B6D8B7634
      2C949D7D17B59323373753170859EFE9A6D6D7908E13325E1AF6D52123427999
      9456B5531B3C426C9C92F2D8B0AF0E190D262F12B2E7BC7672030DCB05AC1C22
      9A8C2F1132F381767293072A16B154463471CA6452FF503BB9C9D3659D52996C
      37D900B95971BB6BC6AEEAA737B1CAED399CD26E832337319B1B26DD35661AD2
      C93621BBD60DB6406E4EDC4E4393CCD04843AF07BBD2D5EE0C426E524A6E309B
      496668A62199DA440F912C68E10A21854F8D36313B4099A287483ADD31C742BA
      66B48D61C37792B6DDA576B17E8824E1D60B09BD6E965599F6BF781E92A90EF6
      DB202ABADBDCE9A4BDD235B3CD8C759A6C7B9B8C17703C058952A2DED47AD3BC
      30878684EEF017D12C534A09C55C1171A11DD21BA3FE5CD2C29A71E3218F46C5
      89F6B0AF1A014B6F33C70847AEDC8C168B980B222A7AED4E9ECDF2EA3446B13C
      4622384E18364DF8965B3A289A883068A797BF3F19454200801A2200400D1100
      A086080050430400A8210200D41001006A880000354400801A2200400D1100A0
      86080050430400A8210200D41001006A880000354400801A2200400D1100A086
      080050430400A8210200D41001006A880000354400801A2200400D1100A08608
      0050430400A8210200D41001006A880000354400801A2200400D1100A0860800
      50430400A8210200D41001006A880000354400F0FF6D3D9CA03204B237000000
      0049454E44AE426082}
    Stretch = True
    Transparent = True
    OnClick = imgGoogleStoreClick
  end
  object memUserInstructions: TMemo
    Left = 8
    Top = 88
    Width = 349
    Height = 194
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'To use 2FA (2-factor authentication):'
      ''
      '(1) Install Authy from your app store.'
      '(2) Click on the + ("Add Account").'
      '(3) Enter your secret code / scan the QR code '
      'below.'
      '(4) Give it a name and save it.'
      '(5) Close this window and login!')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
end
