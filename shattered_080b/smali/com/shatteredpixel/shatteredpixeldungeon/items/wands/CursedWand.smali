.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;
.super Ljava/lang/Object;
.source "CursedWand.java"


# static fields
.field public static COMMON_CHANCE:F = 0.6f

.field public static RARE_CHANCE:F = 0.09f

.field public static UNCOMMON_CHANCE:F = 0.3f

.field public static VERY_RARE_CHANCE:F = 0.01f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x8

    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p1, 0x3f800000    # 1.0f

    const-string p2, "snd_zap.mp3"

    .line 5
    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public static cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;

    const/4 v1, 0x4

    new-array v2, v1, [F

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->COMMON_CHANCE:F

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->UNCOMMON_CHANCE:F

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->RARE_CHANCE:F

    const/4 v6, 0x2

    aput v3, v2, v6

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->VERY_RARE_CHANCE:F

    const/4 v7, 0x3

    aput v3, v2, v7

    invoke-static {v2}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v2

    const-string v3, "nothing"

    if-eq v2, v5, :cond_1e

    if-eq v2, v6, :cond_13

    if-eq v2, v7, :cond_6

    .line 2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    if-eqz p0, :cond_5

    if-eq p0, v5, :cond_4

    if-eq p0, v6, :cond_1

    if-eq p0, v7, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$4;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 4
    :cond_1
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;

    invoke-direct {p0, p2, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 8
    :cond_4
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$2;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 9
    :cond_5
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;

    invoke-direct {p0, p2, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 10
    :cond_6
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-eqz v2, :cond_11

    if-eq v2, v5, :cond_10

    if-eq v2, v6, :cond_d

    if-eq v2, v7, :cond_7

    goto/16 :goto_5

    :cond_7
    if-eqz p0, :cond_c

    .line 11
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v2, :cond_c

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 12
    :cond_8
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_9
    new-array p2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 13
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, p2, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, p2, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, p2, v6

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, p2, v7

    .line 14
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget-object p2, p2, v2

    .line 15
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p2

    .line 16
    iget-boolean v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v2, :cond_9

    .line 17
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    :cond_a
    iput-boolean v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v5, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 19
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz p0, :cond_b

    new-array p0, v4, [Ljava/lang/Object;

    const-string v1, "transmogrify_wand"

    .line 20
    invoke-static {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    new-array p0, v4, [Ljava/lang/Object;

    const-string v1, "transmogrify_other"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :goto_0
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p0

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 23
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 24
    :cond_c
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 25
    :cond_d
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p1, v1, :cond_e

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    .line 27
    :cond_e
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 28
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 29
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-eq p0, p1, :cond_f

    new-array p0, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {v0, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 32
    :cond_f
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$10;

    const-string p1, "CURSED WAND ERROR"

    const-string p2, "this application will now self-destruct"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "abort"

    aput-object v2, v1, v4

    const-string v2, "retry"

    aput-object v2, v1, v5

    const-string v2, "fail"

    aput-object v2, v1, v6

    invoke-direct {p0, p1, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$10;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    .line 33
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    new-array p0, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {v0, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 36
    :cond_10
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto/16 :goto_5

    :cond_11
    const/4 p0, 0x0

    .line 37
    :goto_2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 38
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge p0, p2, :cond_12

    const/16 p2, 0xf

    .line 39
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Regrowth;

    invoke-static {p0, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object p2

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 40
    :cond_12
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p0

    const/16 p2, 0xa

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-static {p0, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    const/4 p0, 0x5

    .line 41
    invoke-static {p0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    if-nez p0, :cond_12

    .line 42
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/16 p2, 0x8

    const/high16 v1, 0x42000000    # 32.0f

    invoke-direct {p0, p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const p2, 0xffff66

    .line 43
    iput-boolean v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 44
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 45
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    .line 46
    sget-object p0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p1, 0x3f800000    # 1.0f

    const-string p2, "snd_teleport.mp3"

    .line 47
    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "grass"

    .line 48
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "fire"

    .line 49
    invoke-static {v0, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 51
    :cond_13
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-eqz v0, :cond_1c

    if-eq v0, v5, :cond_1a

    if-eq v0, v6, :cond_15

    if-eq v0, v7, :cond_14

    goto/16 :goto_5

    .line 52
    :cond_14
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;-><init>()V

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 53
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 54
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->activate()V

    .line 55
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 56
    :cond_15
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le p0, v5, :cond_19

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result p0

    if-nez p0, :cond_19

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, p0, :cond_19

    .line 57
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sub-int/2addr p0, v5

    new-array p0, p0, [F

    const/4 p1, 0x1

    .line 58
    :goto_3
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ge p1, p2, :cond_16

    add-int/lit8 p2, p1, -0x1

    int-to-float v0, p1

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 59
    :cond_16
    invoke-static {p0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p0

    add-int/2addr p0, v5

    .line 60
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$timeFreeze;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 61
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 62
    :cond_17
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$TimeBubble;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 63
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 64
    :cond_18
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 65
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnDepth:I

    const/4 p0, -0x1

    .line 66
    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->returnPos:I

    .line 67
    const-class p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {p0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto :goto_4

    .line 68
    :cond_19
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 69
    :goto_4
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 70
    :cond_1a
    instance-of p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p0, :cond_1b

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/CursingTrap;->curse(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 71
    :cond_1b
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto/16 :goto_5

    .line 72
    :cond_1c
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p1, v0, :cond_1d

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto :goto_5

    .line 74
    :cond_1d
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;

    invoke-direct {p0, p2, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$8;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto :goto_5

    .line 75
    :cond_1e
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_23

    if-eq v1, v5, :cond_21

    if-eq v1, v6, :cond_20

    if-eq v1, v7, :cond_1f

    goto :goto_5

    .line 76
    :cond_1f
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ShockingTrap;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ShockingTrap;-><init>()V

    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 77
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 78
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->activate()V

    .line 79
    const-class p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 80
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 81
    invoke-static {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 82
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_5

    .line 83
    :cond_20
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto :goto_5

    .line 84
    :cond_21
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 85
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;

    invoke-direct {v0, p1, v1, p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    goto :goto_5

    :cond_22
    new-array p0, v4, [Ljava/lang/Object;

    .line 86
    invoke-static {v0, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-interface {p3}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_5

    .line 88
    :cond_23
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$5;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    invoke-static {p1, p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedFX(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    :goto_5
    return-void
.end method
