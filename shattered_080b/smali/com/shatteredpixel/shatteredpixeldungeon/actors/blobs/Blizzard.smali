.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blizzard;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Blizzard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->evolve()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Inferno;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Inferno;

    .line 5
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v4, Lcom/watabou/utils/Rect;->right:I

    if-ge v3, v5, :cond_5

    .line 6
    iget v4, v4, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v5, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v4, v5, :cond_4

    .line 7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    .line 9
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, v5

    if-lez v6, :cond_3

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 12
    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v6, :cond_2

    iget-object v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, v5

    if-lez v6, :cond_2

    .line 13
    invoke-virtual {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 14
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v6, v5

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->freeze(I)V

    .line 16
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->freeze(I)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
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

    const/16 v0, 0x77

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(IZ)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
