.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Inferno;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Inferno.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 13

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

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blizzard;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blizzard;

    .line 5
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->left:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v7, Lcom/watabou/utils/Rect;->right:I

    if-gt v3, v8, :cond_7

    .line 6
    iget v7, v7, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v7, v4

    :goto_1
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v8, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v7, v8, :cond_6

    .line 7
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v10, v7, v9

    add-int/2addr v10, v3

    .line 9
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v12, v11, v10

    if-lez v12, :cond_3

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 12
    iget v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v8, :cond_2

    iget-object v8, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v8, v10

    if-lez v8, :cond_2

    .line 13
    invoke-virtual {v2, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 14
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aput v5, v9, v10

    aput v5, v8, v10

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;->burn(I)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_5

    add-int/lit8 v8, v10, -0x1

    aget v8, v11, v8

    if-gtz v8, :cond_4

    add-int/lit8 v8, v10, 0x1

    aget v8, v11, v8

    if-gtz v8, :cond_4

    sub-int v8, v10, v9

    .line 17
    aget v8, v11, v8

    if-gtz v8, :cond_4

    add-int/2addr v9, v10

    .line 18
    aget v8, v11, v9

    if-lez v8, :cond_5

    .line 19
    :cond_4
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;->burn(I)V

    .line 20
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->destroy(I)V

    .line 21
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    const/4 v6, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eqz v6, :cond_8

    .line 22
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_8
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

    const/16 v0, 0x76

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
