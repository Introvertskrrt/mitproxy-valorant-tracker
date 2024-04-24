import 'package:flutter/material.dart';
import 'package:mitproxy_val/constants/color_constant.dart';
import 'package:mitproxy_val/constants/textstyle_constant.dart';
import 'package:mitproxy_val/utils/cache.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key});

  final textStyleConstant = TextStyleConstant();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "PROFILE",
            style: textStyleConstant.TextStyleInterBold(Colors.black38, 14),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.pageColor2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 180, // Sesuaikan tinggi container sesuai kebutuhan Anda
                child: Stack(
                  children: [
                    // Container untuk latar belakang merah
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://media.valorant-api.com/playercards/${Cache.playerProfile!.playerCardId}/wideart.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/currencies/85ad13f7-3d1b-5128-9eb2-7cd8ee0b5741/displayicon.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            '${Cache.playerProfile!.valorantPoint}',
                            style: textStyleConstant.TextStyleInterNormal(Colors.white, 16)
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/currencies/e59aa87c-4cbf-517a-5983-6e81511be9b7/displayicon.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            '${Cache.playerProfile!.radianite}',
                            style: textStyleConstant.TextStyleInterNormal(Colors.white, 16)
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/currencies/85ca954a-41f2-ce94-9b45-8ca3dd39a00d/displayicon.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            '${Cache.playerProfile!.kingdomCredits}',
                            style: textStyleConstant.TextStyleInterNormal(Colors.white, 16)
                          ),
                        ),
                      ],
                    ),
                    // Container untuk foto profil
                    Positioned(
                      top: 80,
                      left: (MediaQuery.of(context).size.width - 110) /
                          2, // Posisi horizontal foto
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.valorant-api.com/playercards/${Cache.playerProfile!.playerCardId}/smallart.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 145,
                      left: (MediaQuery.of(context).size.width - 82) / 2,
                      child: Container(
                        width: 50,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 216, 212, 212),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '${Cache.playerProfile!.playerLevels}',
                            style: textStyleConstant.TextStyleInterNormal(
                                Colors.black54, 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                Cache.playerProfile!.playername,
                style: textStyleConstant.TextStyleInterBold(Colors.black, 14),
              ),
              const SizedBox(height: 5),
              Text(
                Cache.playerProfile!.currentCompetitiveSeason,
                style:
                    textStyleConstant.TextStyleInterNormal(Colors.black54, 12),
              ),
              const SizedBox(height: 5),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(color: Cache.playerProfile!.rankColor),
                  color: Cache.playerProfile!.rankColor.withOpacity(0.3),
                  image: DecorationImage(
                    image: NetworkImage(Cache.playerProfile!.currentRankImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                Cache.playerProfile!.currentCompetitiveRank,
                style: textStyleConstant.TextStyleInterBold(Colors.black, 14),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${Cache.playerProfile!.playerXp} Xp',
                          style: textStyleConstant.TextStyleInterNormal(
                              Colors.black54, 14),
                        ),
                        Text(
                          "${Cache.playerProfile!.playerMmr} RR",
                          style: textStyleConstant.TextStyleInterNormal(
                              Colors.black54, 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstant.pageColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Active Missions",
                              style: textStyleConstant.TextStyleInterBold(
                                  Colors.black, 14),
                            ),
                          ],
                        ),
                        Column(
                          children: List.generate(
                              Cache.playerProfile!.missionNames.length,
                              (index) {
                            return ListTile(
                              title: Text(
                                '${Cache.playerProfile!.missionType[index]} | ${Cache.playerProfile!.missionNames[index]}',
                                style: textStyleConstant.TextStyleInterNormal(
                                    Colors.black, 14),
                              ),
                              subtitle: Text(
                                'Reward ${Cache.playerProfile!.missionXpRewards[index]} XP',
                                style: textStyleConstant.TextStyleInterNormal(
                                    Colors.black54, 12),
                              ),
                              trailing: Text(
                                '${Cache.playerProfile!.missionProgress[index]}/${Cache.playerProfile!.missionProgressToComplete[index]}',
                                style: textStyleConstant.TextStyleInterNormal(
                                    Colors.black, 12),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
