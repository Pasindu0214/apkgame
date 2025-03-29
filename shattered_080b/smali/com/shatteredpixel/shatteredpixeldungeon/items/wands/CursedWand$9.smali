.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;
.super Ljava/lang/Object;
.source "CursedWand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$afterZap:Lcom/watabou/utils/Callback;

.field public final synthetic val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GoldenMimic;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILjava/util/List;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->stopHiding()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v3, v1, v2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 6
    sget-object v2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f59999a    # 0.85f

    const-string v6, "snd_mimic.mp3"

    .line 7
    invoke-virtual {v2, v6, v4, v4, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 8
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 10
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$9;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
