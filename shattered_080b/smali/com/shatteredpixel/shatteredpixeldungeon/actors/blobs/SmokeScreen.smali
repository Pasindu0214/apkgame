.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/SmokeScreen;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "SmokeScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v2, v2, p1

    if-gtz v2, :cond_1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, p1

    aget v0, v2, v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v1, p1

    return-void
.end method

.method public evolve()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->evolve()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    if-ge v1, v3, :cond_3

    .line 4
    iget v2, v2, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 5
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 6
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v5, v5, v3

    if-gtz v5, :cond_1

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v6, v3

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v5, 0x1

    :goto_3
    aput-boolean v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public fullyClear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

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

    const/16 v0, 0x74

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
