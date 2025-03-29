.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$FallingRocks;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "NewDM300.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallingRocks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->alwaysVisible:Z

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->left:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->right:I

    const/high16 v5, 0x40400000    # 3.0f

    if-ge v0, v4, :cond_5

    .line 2
    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v4, :cond_4

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v3

    add-int/2addr v4, v0

    .line 5
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v7, v4

    const/4 v9, 0x1

    if-lez v8, :cond_0

    aget v7, v7, v4

    sub-int/2addr v7, v9

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    aput v7, v6, v4

    .line 6
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v7, v6, v4

    if-lez v7, :cond_1

    .line 7
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v6, v6, v4

    add-int/2addr v7, v6

    iput v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    :cond_1
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, v4

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v6, v6, v4

    if-nez v6, :cond_3

    .line 9
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v6

    const v7, 0x3d8f5c29    # 0.07f

    const/16 v8, 0xa

    invoke-virtual {v2, v6, v7, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 10
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    instance-of v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-nez v4, :cond_2

    .line 12
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-static {v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_2
    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v5, v1}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 14
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_rocks.mp3"

    .line 15
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_6
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
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    .line 2
    new-instance v0, Lcom/watabou/utils/RectF;

    const/4 v1, 0x0

    const v2, -0x41b33333    # -0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->bound:Lcom/watabou/utils/RectF;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EarthParticle;->FALLING:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
