.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerBlob;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShockerBlob"
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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v2, v1, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v2, :cond_4

    .line 2
    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v2, v2, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v1, v2, :cond_3

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    .line 5
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v4, v2

    if-lez v5, :cond_0

    aget v4, v4, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    aput v4, v3, v2

    .line 6
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v4, v3, v2

    if-lez v4, :cond_1

    .line 7
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v3, v3, v2

    add-int/2addr v4, v3

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v3, v3, v2

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v3, v3, v2

    if-nez v3, :cond_2

    .line 9
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    if-nez v3, :cond_2

    .line 11
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v3, v3, 0x2

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 12
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v2, v3, :cond_2

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->STATIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
