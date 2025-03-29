.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombBlob;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BombBlob"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    const/16 v0, -0x1f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->alwaysVisible:Z

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->left:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v4, :cond_6

    .line 2
    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_5

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v3

    add-int/2addr v4, v0

    .line 5
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v7, v6, v4

    const/4 v8, 0x1

    if-lez v7, :cond_0

    aget v6, v6, v4

    sub-int/2addr v6, v8

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    aput v6, v5, v4

    .line 6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v6, v5, v4

    if-lez v6, :cond_1

    .line 7
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v5, v5, v4

    add-int/2addr v6, v5

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, v4

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v5, v5, v4

    if-nez v5, :cond_4

    .line 9
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 10
    instance-of v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    if-nez v6, :cond_3

    .line 11
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v7, v6, 0x5

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0xa

    invoke-static {v7, v6}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v6

    .line 12
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_2

    .line 13
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-virtual {v2, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 14
    :cond_2
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v2, v6, :cond_3

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 16
    :cond_3
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v2, v4, v6, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 18
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_blast.mp3"

    .line 19
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_7
    return-void
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
