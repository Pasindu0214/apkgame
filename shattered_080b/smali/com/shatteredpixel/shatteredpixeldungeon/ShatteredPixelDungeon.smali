.class public Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;
.super Lcom/watabou/noosa/Game;
.source "ShatteredPixelDungeon.java"


# direct methods
.method public constructor <init>(Lcom/watabou/utils/PlatformSupport;)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Kinetic;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;

    sget-object v2, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/watabou/noosa/Game;-><init>(Ljava/lang/Class;Lcom/watabou/utils/PlatformSupport;)V

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    .line 3
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.Bomb"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    .line 5
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.scrolls.ScrollOfPsionicBlast"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight;

    .line 7
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.potions.PotionOfMight"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion;

    .line 9
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.scrolls.ScrollOfMagicalInfusion"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    .line 11
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.missiles.Boomerang"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;

    .line 13
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.melee.Knuckles"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;

    .line 15
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.stones.StoneOfDetectCurse"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.curses.Elastic"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Dazzling"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Eldritch"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    .line 20
    sget-object v1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Stunning"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Chilling;

    .line 22
    sget-object v1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Venomous"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Vorpal"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Precise"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p1, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.items.weapon.enchantments.Swift"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossEntranceRoom;

    .line 27
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.levels.rooms.standard.SewerBossEntranceRoom"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;

    .line 29
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.levels.PrisonBossLevel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    .line 31
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.Tengu"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredBrute;

    .line 33
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.Shielded"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM100;

    .line 35
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.Shaman"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FireElemental;

    .line 37
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.Elemental"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$NewbornFireElemental;

    .line 39
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.NewbornElemental"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldDM300;

    .line 41
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.actors.mobs.DM300"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;

    .line 43
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.levels.CavesBossLevel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCityBossLevel;

    .line 45
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.levels.CityBossLevel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldHallsBossLevel;

    .line 47
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon.levels.HallsBossLevel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->saveWindows()V

    .line 4
    sget-object v0, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    .line 6
    sget-object v2, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    sput-object v0, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    .line 7
    iput-boolean v1, v2, Lcom/watabou/noosa/Game;->requestedReset:Z

    .line 8
    iput-object p0, v2, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static switchNoFade(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    .line 2
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    sput-object p0, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    .line 3
    iput-boolean v0, v1, Lcom/watabou/noosa/Game;->requestedReset:Z

    const/4 p0, 0x0

    .line 4
    iput-object p0, v1, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Game;->create()V

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    invoke-virtual {v0}, Lcom/watabou/utils/PlatformSupport;->updateSystemUI()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->loadBindings()V

    .line 4
    sget-object v0, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v1, 0x1

    const-string v2, "music"

    .line 5
    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/audio/Music;->enable(Z)V

    .line 7
    sget-object v0, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "music_vol"

    .line 8
    invoke-static {v4, v3, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    .line 9
    invoke-virtual {v0, v4}, Lcom/watabou/noosa/audio/Music;->volume(F)V

    .line 10
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v4, "soundfx"

    .line 11
    invoke-static {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 12
    iput-boolean v4, v0, Lcom/watabou/noosa/audio/Sample;->enabled:Z

    .line 13
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v4, "sfx_vol"

    .line 14
    invoke-static {v4, v3, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Lcom/watabou/noosa/audio/Sample;->globalVolume:F

    .line 16
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/16 v4, 0x2e

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "snd_click.mp3"

    aput-object v5, v4, v2

    const-string v2, "snd_badge.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "snd_gold.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "snd_step.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "snd_water.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "snd_door_open.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "snd_unlock.mp3"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    const-string v2, "snd_item.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x8

    const-string v2, "snd_dewdrop.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x9

    const-string v2, "snd_hit.mp3"

    aput-object v2, v4, v1

    const-string v1, "snd_miss.mp3"

    aput-object v1, v4, v3

    const/16 v1, 0xb

    const-string v2, "snd_descend.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0xc

    const-string v2, "snd_eat.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0xd

    const-string v2, "snd_read.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0xe

    const-string v2, "snd_lullaby.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0xf

    const-string v2, "snd_drink.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x10

    const-string v2, "snd_shatter.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x11

    const-string v2, "snd_zap.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x12

    const-string v2, "snd_lightning.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x13

    const-string v2, "snd_levelup.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x14

    const-string v2, "snd_death.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x15

    const-string v2, "snd_challenge.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x16

    const-string v2, "snd_cursed.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x17

    const-string v2, "snd_evoke.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x18

    const-string v2, "snd_trap.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x19

    const-string v2, "snd_tomb.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1a

    const-string v2, "snd_alert.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1b

    const-string v2, "snd_meld.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1c

    const-string v2, "snd_boss.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1d

    const-string v2, "snd_blast.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1e

    const-string v2, "snd_plant.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x1f

    const-string v2, "snd_ray.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x20

    const-string v2, "snd_beacon.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x21

    const-string v2, "snd_teleport.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x22

    const-string v2, "snd_charms.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x23

    const-string v2, "snd_mastery.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x24

    const-string v2, "snd_puff.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x25

    const-string v2, "snd_rocks.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x26

    const-string v2, "snd_burning.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x27

    const-string v2, "snd_falling.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x28

    const-string v2, "snd_ghost.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x29

    const-string v2, "snd_secret.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x2a

    const-string v2, "snd_bones.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x2b

    const-string v2, "snd_bee.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x2c

    const-string v2, "snd_degrade.mp3"

    aput-object v2, v4, v1

    const/16 v1, 0x2d

    const-string v2, "snd_mimic.mp3"

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/watabou/noosa/audio/Sample;->load([Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Game;->destroy()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->keepActorThreadAlive:Z

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    if-eqz v0, :cond_2

    sget v0, Lcom/watabou/noosa/Game;->height:I

    if-ne p2, v0, :cond_1

    sget v0, Lcom/watabou/noosa/Game;->width:I

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->saveWindows()V

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/watabou/noosa/Game;->resize(II)V

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->updateDisplaySize()V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchScene()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Game;->switchScene()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 6
    :try_start_0
    invoke-static {v2}, La/b/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/watabou/noosa/Gizmo;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public updateDisplaySize()V
    .locals 12

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    .line 5
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getMeasuredWidth()I

    move-result v1

    sput v1, Lcom/watabou/noosa/Game;->dispWidth:I

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getMeasuredHeight()I

    move-result v1

    sput v1, Lcom/watabou/noosa/Game;->dispHeight:I

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 9
    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    sget v2, Lcom/watabou/noosa/Game;->dispWidth:I

    sget v5, Lcom/watabou/noosa/Game;->dispHeight:I

    if-lt v2, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 10
    :goto_3
    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v2, v5, :cond_6

    .line 11
    sget v2, Lcom/watabou/noosa/Game;->dispWidth:I

    .line 12
    sget v5, Lcom/watabou/noosa/Game;->dispHeight:I

    sput v5, Lcom/watabou/noosa/Game;->dispWidth:I

    .line 13
    sput v2, Lcom/watabou/noosa/Game;->dispHeight:I

    .line 14
    :cond_6
    sget v2, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v2, v2

    sget v5, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-lez v6, :cond_7

    const/high16 v6, 0x43700000    # 240.0f

    goto :goto_4

    :cond_7
    const/high16 v6, 0x43070000    # 135.0f

    :goto_4
    cmpl-float v7, v2, v5

    if-lez v7, :cond_8

    const/high16 v7, 0x43200000    # 160.0f

    goto :goto_5

    :cond_8
    const/high16 v7, 0x43610000    # 225.0f

    .line 15
    :goto_5
    sget v8, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v6, v9

    const-string v11, "power_saver"

    cmpg-float v8, v8, v10

    if-ltz v8, :cond_9

    sget v8, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v8, v8

    mul-float v9, v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_a

    .line 16
    :cond_9
    invoke-static {v11, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 17
    :cond_a
    invoke-static {v11, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    .line 18
    sget v1, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    sget v3, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v3

    add-float/2addr v1, v5

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, v3

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v7, v1

    div-float v1, v6, v7

    cmpl-float v1, v2, v1

    if-lez v1, :cond_b

    mul-float v6, v7, v2

    goto :goto_6

    :cond_b
    div-float v7, v6, v2

    .line 21
    :goto_6
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 22
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 23
    sget v3, Lcom/watabou/noosa/Game;->width:I

    if-ne v1, v3, :cond_c

    sget v3, Lcom/watabou/noosa/Game;->height:I

    if-eq v2, v3, :cond_e

    .line 24
    :cond_c
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;II)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 25
    :cond_d
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$2;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    :goto_7
    return-void

    :cond_f
    const/4 v0, 0x0

    .line 26
    throw v0
.end method
