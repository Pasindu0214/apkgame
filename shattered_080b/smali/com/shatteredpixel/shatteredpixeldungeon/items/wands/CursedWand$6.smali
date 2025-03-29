.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;
.super Ljava/lang/Object;
.source "CursedWand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$afterZap:Lcom/watabou/utils/Callback;

.field public final synthetic val$origin:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$origin:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 9

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 7
    :goto_0
    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 8
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v4, v6, v8, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$origin:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-virtual {v3, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 11
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v6, 0x3d4ccccd    # 0.05f

    const/16 v7, 0xa

    invoke-virtual {v0, v4, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_3

    .line 13
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v6, "snd_cursed.mp3"

    .line 14
    invoke-virtual {v0, v6, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 15
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$origin:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 18
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$origin:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "ondeath"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    goto :goto_1

    .line 20
    :cond_3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_burning.mp3"

    .line 21
    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 22
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$6;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
